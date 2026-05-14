package com.lightweightledger.app;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.text.InputType;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;

public class FinancePlanActivity extends Activity {
    private static final String DATABASE_NAME = "sql_tally";
    private static final String PREF_FILE = "tally_setting_preference";
    private static final String KEY_BUDGET_MONTH = "key_budget_month";
    private static final String KEY_INCOME_MONTH = "key_income_month";
    private static final String KEY_SAVINGS_GOAL = "key_savings_goal";

    private final DecimalFormat moneyFormat = new DecimalFormat("0.00");

    private TextView monthIncomeValueView;
    private TextView savingsGoalValueView;
    private TextView monthBudgetValueView;
    private TextView monthRemainingBudgetValueView;
    private TextView todayBudgetValueView;
    private TextView monthExpenseValueView;
    private TextView loggedIncomeValueView;
    private TextView plannedSurplusValueView;
    private TextView estimatedSurplusValueView;
    private TextView goalGapValueView;
    private TextView goalProgressValueView;
    private TextView statusView;
    private TextView budgetHintView;
    private ProgressBar goalProgressBar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        LanguageManager.applyToContext(this);
        super.onCreate(savedInstanceState);
        setTitle(text("finance_plan_title", "Finance Plan"));
        setContentView(buildContentView());
        refreshUi();
    }

    @Override
    protected void onResume() {
        super.onResume();
        refreshUi();
    }

    private View buildContentView() {
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(Color.parseColor("#F5F5F9"));
        root.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));

        root.addView(buildAppBar());

        ScrollView scrollView = new ScrollView(this);
        scrollView.setFillViewport(true);
        scrollView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));

        LinearLayout content = new LinearLayout(this);
        content.setOrientation(LinearLayout.VERTICAL);
        content.setPadding(dp(16), dp(16), dp(16), dp(24));
        content.addView(buildSummaryCard());
        content.addView(space(12));
        content.addView(buildSettingsCard());

        scrollView.addView(content, new ScrollView.LayoutParams(-1, -2));
        root.addView(scrollView);
        return root;
    }

    private View buildAppBar() {
        LinearLayout appBar = new LinearLayout(this);
        appBar.setOrientation(LinearLayout.HORIZONTAL);
        appBar.setGravity(Gravity.CENTER_VERTICAL);
        appBar.setBackgroundColor(Color.WHITE);
        appBar.setPadding(dp(16), dp(14), dp(16), dp(14));
        appBar.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));

        TextView backView = new TextView(this);
        backView.setText("<");
        backView.setTextSize(22.0f);
        backView.setTextColor(Color.parseColor("#0F956F"));
        backView.setPadding(0, 0, dp(16), 0);
        backView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });
        appBar.addView(backView, new LinearLayout.LayoutParams(-2, -2));

        TextView titleView = new TextView(this);
        titleView.setText(text("finance_plan_title", "Finance Plan"));
        titleView.setTextColor(Color.parseColor("#3E3E3E"));
        titleView.setTextSize(20.0f);
        titleView.setTypeface(Typeface.DEFAULT_BOLD);
        titleView.setGravity(Gravity.CENTER_VERTICAL);
        appBar.addView(titleView, new LinearLayout.LayoutParams(-2, -2));

        return appBar;
    }

    private View buildSummaryCard() {
        LinearLayout card = cardContainer();

        TextView titleView = sectionTitle(text("finance_plan_summary_title", "Monthly Summary"));
        card.addView(titleView);

        monthBudgetValueView = addMetricRow(card, text("finance_plan_month_budget", "Monthly Budget"));
        monthExpenseValueView = addMetricRow(card, text("finance_plan_month_expense", "Monthly Expense"));
        monthRemainingBudgetValueView = addMetricRow(card, text("finance_plan_month_remaining", "Remaining Budget"));
        todayBudgetValueView = addMetricRow(card, text("finance_plan_today_budget", "Today's Budget"));
        loggedIncomeValueView = addMetricRow(card, text("finance_plan_logged_income", "Logged Income"));
        plannedSurplusValueView = addMetricRow(card, text("finance_plan_planned_surplus", "Planned Savings"));
        estimatedSurplusValueView = addMetricRow(card, text("finance_plan_estimated_surplus", "Estimated Balance"));
        goalGapValueView = addMetricRow(card, text("finance_plan_goal_gap", "Gap to Goal"));
        goalProgressValueView = addMetricRow(card, text("finance_plan_goal_progress", "Goal Progress"));

        goalProgressBar = new ProgressBar(this, null, android.R.attr.progressBarStyleHorizontal);
        goalProgressBar.setMax(100);
        LinearLayout.LayoutParams progressParams = new LinearLayout.LayoutParams(-1, dp(8));
        progressParams.topMargin = dp(8);
        goalProgressBar.setLayoutParams(progressParams);
        card.addView(goalProgressBar);

        statusView = new TextView(this);
        statusView.setTextColor(Color.parseColor("#666666"));
        statusView.setTextSize(14.0f);
        statusView.setPadding(0, dp(12), 0, 0);
        card.addView(statusView);

        return card;
    }

    private View buildSettingsCard() {
        LinearLayout card = cardContainer();

        TextView titleView = sectionTitle(text("finance_plan_settings_title", "Planning Settings"));
        card.addView(titleView);

        monthIncomeValueView = addActionRow(
                card,
                text("finance_plan_month_income", "Monthly Income"),
                new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        showMoneyDialog(
                                text("finance_plan_income_dialog_title", "Set Monthly Income"),
                                text("finance_plan_income_input_hint", "Enter monthly income"),
                                KEY_INCOME_MONTH,
                                getMoneyPreference(KEY_INCOME_MONTH)
                        );
                    }
                }
        );

        savingsGoalValueView = addActionRow(
                card,
                text("finance_plan_savings_goal", "Savings Goal"),
                new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        showMoneyDialog(
                                text("finance_plan_goal_dialog_title", "Set Savings Goal"),
                                text("finance_plan_goal_input_hint", "Enter savings goal"),
                                KEY_SAVINGS_GOAL,
                                getMoneyPreference(KEY_SAVINGS_GOAL)
                        );
                    }
                }
        );

        budgetHintView = new TextView(this);
        budgetHintView.setTextColor(Color.parseColor("#9B9B9B"));
        budgetHintView.setTextSize(13.0f);
        budgetHintView.setPadding(0, dp(12), 0, 0);
        card.addView(budgetHintView);

        return card;
    }

    private TextView addMetricRow(LinearLayout parent, String label) {
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(0, dp(10), 0, 0);
        parent.addView(row, new LinearLayout.LayoutParams(-1, -2));

        TextView labelView = new TextView(this);
        labelView.setText(label);
        labelView.setTextColor(Color.parseColor("#666666"));
        labelView.setTextSize(14.0f);
        LinearLayout.LayoutParams labelParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
        row.addView(labelView, labelParams);

        TextView valueView = new TextView(this);
        valueView.setTextColor(Color.parseColor("#3E3E3E"));
        valueView.setTextSize(15.0f);
        valueView.setTypeface(Typeface.DEFAULT_BOLD);
        valueView.setGravity(Gravity.END);
        row.addView(valueView, new LinearLayout.LayoutParams(-2, -2));

        return valueView;
    }

    private TextView addActionRow(LinearLayout parent, String label, View.OnClickListener listener) {
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(0, dp(10), 0, 0);
        parent.addView(row, new LinearLayout.LayoutParams(-1, -2));

        TextView labelView = new TextView(this);
        labelView.setText(label);
        labelView.setTextColor(Color.parseColor("#3E3E3E"));
        labelView.setTextSize(15.0f);
        LinearLayout.LayoutParams labelParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
        row.addView(labelView, labelParams);

        TextView valueView = new TextView(this);
        valueView.setTextColor(Color.parseColor("#666666"));
        valueView.setTextSize(15.0f);
        valueView.setPadding(0, 0, dp(12), 0);
        row.addView(valueView, new LinearLayout.LayoutParams(-2, -2));

        Button button = new Button(this);
        button.setAllCaps(false);
        button.setText(text("finance_plan_set_action", "Set"));
        button.setTextColor(Color.WHITE);
        button.setTextSize(14.0f);
        button.setPadding(dp(14), dp(6), dp(14), dp(6));
        button.setBackground(buttonBackground());
        button.setOnClickListener(listener);
        row.addView(button, new LinearLayout.LayoutParams(-2, -2));

        return valueView;
    }

    private void refreshUi() {
        float monthBudget = getMoneyPreference(KEY_BUDGET_MONTH);
        float monthIncomePlan = getMoneyPreference(KEY_INCOME_MONTH);
        float savingsGoal = getMoneyPreference(KEY_SAVINGS_GOAL);

        double monthExpense = queryMonthAmount(0);
        double loggedIncome = queryMonthAmount(1);
        double monthRemainingBudget = monthBudget - monthExpense;
        double todayBudget = monthBudget > 0.0f ? monthRemainingBudget / remainingDaysInMonth() : 0.0d;
        double plannedSurplus = monthIncomePlan - monthBudget;
        double estimatedSurplus = monthIncomePlan - monthExpense;
        double goalGap = savingsGoal - estimatedSurplus;

        monthIncomeValueView.setText(formatPlanValue(monthIncomePlan));
        savingsGoalValueView.setText(formatPlanValue(savingsGoal));

        monthBudgetValueView.setText(formatPlanValue(monthBudget));
        monthExpenseValueView.setText(formatAlways(monthExpense));
        monthRemainingBudgetValueView.setText(monthBudget > 0.0f ? formatSigned(monthRemainingBudget) : text("finance_plan_not_set", "Not set"));
        todayBudgetValueView.setText(monthBudget > 0.0f ? formatSigned(todayBudget) : text("finance_plan_not_set", "Not set"));
        loggedIncomeValueView.setText(formatAlways(loggedIncome));
        plannedSurplusValueView.setText(formatSigned(plannedSurplus));
        estimatedSurplusValueView.setText(formatSigned(estimatedSurplus));
        goalGapValueView.setText(formatSigned(goalGap));

        int progress = 0;
        if (savingsGoal > 0.0f && estimatedSurplus > 0.0d) {
            progress = (int) Math.min(100.0d, Math.round((estimatedSurplus / savingsGoal) * 100.0d));
        }
        goalProgressBar.setProgress(progress);
        goalProgressValueView.setText(progress + "%");

        budgetHintView.setText(text("finance_plan_budget_hint", "Monthly budget can still be adjusted from the home screen"));

        if (monthIncomePlan <= 0.0f || savingsGoal <= 0.0f) {
            statusView.setText(text("finance_plan_status_waiting", "Set monthly income and a savings goal to start planning."));
        } else if (estimatedSurplus >= savingsGoal) {
            statusView.setText(formatString(
                    "finance_plan_status_reached",
                    "With the current plan, this month is expected to leave %1$s, which is %2$s above the goal.",
                    formatAlways(estimatedSurplus),
                    formatAlways(Math.abs(goalGap))
            ));
        } else {
            statusView.setText(formatString(
                    "finance_plan_status_ready",
                    "With the current plan, this month is expected to leave %1$s, and %2$s is still needed to hit the goal.",
                    formatAlways(estimatedSurplus),
                    formatAlways(Math.abs(goalGap))
            ));
        }
    }

    private void showMoneyDialog(String title, String hint, final String key, float currentValue) {
        final EditText input = new EditText(this);
        input.setInputType(InputType.TYPE_CLASS_NUMBER | InputType.TYPE_NUMBER_FLAG_DECIMAL);
        input.setHint(hint);
        input.setPadding(dp(16), dp(16), dp(16), dp(16));
        if (currentValue > 0.0f) {
            input.setText(trimNumber(currentValue));
            input.setSelection(input.getText().length());
        }

        AlertDialog dialog = new AlertDialog.Builder(this)
                .setTitle(title)
                .setView(input)
                .setNegativeButton(text("finance_plan_cancel", "Cancel"), null)
                .setPositiveButton(text("finance_plan_confirm", "Confirm"), null)
                .create();

        dialog.setOnShowListener(new DialogInterface.OnShowListener() {
            @Override
            public void onShow(DialogInterface dialogInterface) {
                AlertDialog alertDialog = (AlertDialog) dialogInterface;
                alertDialog.getButton(AlertDialog.BUTTON_POSITIVE).setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        String raw = input.getText().toString().trim();
                        float value = 0.0f;
                        if (!raw.isEmpty()) {
                            try {
                                value = Float.parseFloat(raw);
                            } catch (NumberFormatException error) {
                                Toast.makeText(FinancePlanActivity.this, text("finance_plan_invalid_number", "Please enter a valid amount"), Toast.LENGTH_SHORT).show();
                                return;
                            }
                        }
                        saveMoneyPreference(key, Math.max(0.0f, value));
                        refreshUi();
                        ((AlertDialog) dialogInterface).dismiss();
                    }
                });
            }
        });

        dialog.show();
    }

    private GradientDrawable cardBackground() {
        GradientDrawable drawable = new GradientDrawable();
        drawable.setColor(Color.WHITE);
        drawable.setCornerRadius(dp(8));
        return drawable;
    }

    private GradientDrawable buttonBackground() {
        GradientDrawable drawable = new GradientDrawable();
        drawable.setColor(Color.parseColor("#0F956F"));
        drawable.setCornerRadius(dp(6));
        return drawable;
    }

    private LinearLayout cardContainer() {
        LinearLayout card = new LinearLayout(this);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setPadding(dp(16), dp(16), dp(16), dp(16));
        card.setBackground(cardBackground());
        card.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        return card;
    }

    private TextView sectionTitle(String text) {
        TextView titleView = new TextView(this);
        titleView.setText(text);
        titleView.setTextColor(Color.parseColor("#3E3E3E"));
        titleView.setTextSize(17.0f);
        titleView.setTypeface(Typeface.DEFAULT_BOLD);
        return titleView;
    }

    private View space(int heightDp) {
        View view = new View(this);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, dp(heightDp)));
        return view;
    }

    private int dp(int value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }

    private SharedPreferences preferences() {
        return getSharedPreferences(PREF_FILE, Context.MODE_PRIVATE);
    }

    private float getMoneyPreference(String key) {
        return preferences().getFloat(key, 0.0f);
    }

    private void saveMoneyPreference(String key, float value) {
        preferences().edit().putFloat(key, value).apply();
    }

    private double queryMonthAmount(int recordType) {
        File databaseFile = getDatabasePath(DATABASE_NAME);
        if (databaseFile == null || !databaseFile.exists()) {
            return 0.0d;
        }

        long[] range = monthRange();
        SQLiteDatabase database = null;
        Cursor cursor = null;
        try {
            database = SQLiteDatabase.openDatabase(databaseFile.getAbsolutePath(), null, SQLiteDatabase.OPEN_READONLY);
            cursor = database.rawQuery(
                    "select ifnull(sum(record_amount), 0) from record where record_time >= ? and record_time <= ? and record_type = ?",
                    new String[]{
                            String.valueOf(range[0]),
                            String.valueOf(range[1]),
                            String.valueOf(recordType)
                    }
            );
            if (cursor.moveToFirst()) {
                return cursor.getDouble(0);
            }
        } catch (Exception ignored) {
            return 0.0d;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
            if (database != null) {
                database.close();
            }
        }
        return 0.0d;
    }

    private long[] monthRange() {
        Calendar start = Calendar.getInstance();
        start.set(Calendar.DAY_OF_MONTH, 1);
        start.set(Calendar.HOUR_OF_DAY, 0);
        start.set(Calendar.MINUTE, 0);
        start.set(Calendar.SECOND, 0);
        start.set(Calendar.MILLISECOND, 0);

        Calendar end = (Calendar) start.clone();
        end.add(Calendar.MONTH, 1);
        end.add(Calendar.MILLISECOND, -1);

        return new long[]{start.getTimeInMillis(), end.getTimeInMillis()};
    }

    private int remainingDaysInMonth() {
        Calendar calendar = Calendar.getInstance();
        int lastDay = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
        int today = calendar.get(Calendar.DAY_OF_MONTH);
        int remaining = lastDay - today + 1;
        return remaining > 0 ? remaining : 1;
    }

    private String formatPlanValue(double value) {
        if (value <= 0.0d) {
            return text("finance_plan_not_set", "Not set");
        }
        return formatAlways(value);
    }

    private String formatAlways(double value) {
        return "\uFFE5" + this.moneyFormat.format(value);
    }

    private String formatSigned(double value) {
        String prefix = value > 0.0d ? "+" : value < 0.0d ? "-" : "";
        return prefix + formatAlways(Math.abs(value));
    }

    private String trimNumber(float value) {
        if (Math.abs(value - Math.round(value)) < 0.0001f) {
            return String.valueOf(Math.round(value));
        }
        return String.valueOf(value);
    }

    private String text(String name, String fallback) {
        int resId = getResources().getIdentifier(name, "string", getPackageName());
        if (resId != 0) {
            return getString(resId);
        }
        return fallback;
    }

    private String formatString(String name, String fallback, Object... args) {
        int resId = getResources().getIdentifier(name, "string", getPackageName());
        if (resId != 0) {
            return getString(resId, args);
        }
        return String.format(fallback, args);
    }
}
