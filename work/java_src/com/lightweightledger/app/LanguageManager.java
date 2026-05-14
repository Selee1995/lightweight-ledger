package com.lightweightledger.app;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.LocaleList;
import android.widget.Toast;
import java.util.Locale;

public final class LanguageManager {
    private static final String PREF_FILE = "tally_setting_preference";
    private static final String KEY_LANGUAGE = "key_app_language";
    private static final String LANGUAGE_ZH = "zh";
    private static final String LANGUAGE_EN = "en";

    private LanguageManager() {
    }

    public static void applyToContext(Context context) {
        if (context == null) {
            return;
        }

        Locale locale = localeForLanguage(getSavedLanguage(context));
        Locale.setDefault(locale);
        updateResources(context, locale);

        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null && applicationContext != context) {
            updateResources(applicationContext, locale);
        }
    }

    public static void applyActivityTitle(Activity activity) {
        if (activity == null) {
            return;
        }
        activity.setTitle(text(activity, "app_name_custom", "Lightweight Ledger"));
    }

    private static void updateResources(Context context, Locale locale) {
        Resources resources = context.getResources();
        Configuration configuration = new Configuration(resources.getConfiguration());
        if (Build.VERSION.SDK_INT >= 24) {
            configuration.setLocales(new LocaleList(locale));
        } else if (Build.VERSION.SDK_INT >= 17) {
            configuration.setLocale(locale);
        } else {
            configuration.locale = locale;
        }
        resources.updateConfiguration(configuration, resources.getDisplayMetrics());
    }

    public static void showLanguageDialog(final Activity activity) {
        if (activity == null) {
            return;
        }
        applyToContext(activity);

        final String[] languages = new String[]{LANGUAGE_ZH, LANGUAGE_EN};
        String[] options = new String[]{
                text(activity, "language_switch_option_zh", "Chinese"),
                text(activity, "language_switch_option_en", "English")
        };
        int selected = LANGUAGE_ZH.equals(getSavedLanguage(activity)) ? 0 : 1;

        new AlertDialog.Builder(activity)
                .setTitle(text(activity, "language_switch_dialog_title", "Choose Language"))
                .setSingleChoiceItems(options, selected, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        saveLanguage(activity, languages[which]);
                        applyToContext(activity);
                        Toast.makeText(activity, text(activity, "language_switch_applied", "Language changed"), Toast.LENGTH_SHORT).show();
                        dialog.dismiss();
                        restartApp(activity);
                    }
                })
                .setNegativeButton(text(activity, "finance_plan_cancel", "Cancel"), null)
                .show();
    }

    private static String getSavedLanguage(Context context) {
        SharedPreferences preferences = context.getSharedPreferences(PREF_FILE, Context.MODE_PRIVATE);
        String saved = preferences.getString(KEY_LANGUAGE, "");
        if (LANGUAGE_ZH.equals(saved) || LANGUAGE_EN.equals(saved)) {
            return saved;
        }

        String systemLanguage = Locale.getDefault().getLanguage();
        return LANGUAGE_ZH.equals(systemLanguage) ? LANGUAGE_ZH : LANGUAGE_EN;
    }

    private static void saveLanguage(Context context, String language) {
        context.getSharedPreferences(PREF_FILE, Context.MODE_PRIVATE)
                .edit()
                .putString(KEY_LANGUAGE, language)
                .apply();
    }

    private static Locale localeForLanguage(String language) {
        if (LANGUAGE_ZH.equals(language)) {
            return new Locale("zh", "CN");
        }
        return Locale.ENGLISH;
    }

    private static void restartApp(Activity activity) {
        Intent launchIntent = activity.getPackageManager().getLaunchIntentForPackage(activity.getPackageName());
        if (launchIntent == null) {
            activity.recreate();
            return;
        }
        launchIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK);
        activity.startActivity(launchIntent);
        activity.finish();
    }

    public static String text(Context context, String name, String fallback) {
        int resId = context.getResources().getIdentifier(name, "string", context.getPackageName());
        if (resId != 0) {
            return context.getString(resId);
        }
        return fallback;
    }
}
