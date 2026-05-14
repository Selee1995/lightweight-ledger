package com.lightweightledger.app;

import android.content.Context;
import java.util.Calendar;
import java.util.Locale;

public final class BudgetCalculator {
    private BudgetCalculator() {
    }

    public static String formatTodayBudget(Context context, float monthBudget, double monthExpense) {
        if (context == null || monthBudget <= 0.0f) {
            return LanguageManager.text(context, "tally_module_home_non_budget_place_holder", "No budget set");
        }
        double todayBudget = (monthBudget - monthExpense) / remainingDaysInMonth();
        return "\uFFE5" + String.format(Locale.US, "%.2f", Double.valueOf(todayBudget));
    }

    private static int remainingDaysInMonth() {
        Calendar calendar = Calendar.getInstance();
        int lastDay = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
        int today = calendar.get(Calendar.DAY_OF_MONTH);
        int remaining = lastDay - today + 1;
        return remaining > 0 ? remaining : 1;
    }
}
