.class public Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;
.super Ljava/lang/Object;
.source "VoicemailNotificationSettingsUtil.java"


# static fields
.field private static final OLD_VOICEMAIL_NOTIFICATION_RINGTONE_SHARED_PREFS_KEY:Ljava/lang/String; = "button_voicemail_notification_ringtone_key"

.field private static final OLD_VOICEMAIL_NOTIFICATION_VIBRATION_SHARED_PREFS_KEY:Ljava/lang/String; = "button_voicemail_notification_vibrate_key"

.field private static final OLD_VOICEMAIL_RINGTONE_SHARED_PREFS_KEY:Ljava/lang/String; = "button_voicemail_notification_ringtone_key"

.field private static final OLD_VOICEMAIL_VIBRATE_WHEN_SHARED_PREFS_KEY:Ljava/lang/String; = "button_voicemail_notification_vibrate_when_key"

.field private static final OLD_VOICEMAIL_VIBRATION_ALWAYS:Ljava/lang/String; = "always"

.field private static final OLD_VOICEMAIL_VIBRATION_NEVER:Ljava/lang/String; = "never"

.field private static final VOICEMAIL_NOTIFICATION_RINGTONE_SHARED_PREFS_KEY_PREFIX:Ljava/lang/String; = "voicemail_notification_ringtone_"

.field private static final VOICEMAIL_NOTIFICATION_VIBRATION_SHARED_PREFS_KEY_PREFIX:Ljava/lang/String; = "voicemail_notification_vibrate_"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRingTonePreference(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 82
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 83
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p0, v0}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->migrateVoicemailRingtoneSettingsIfNeeded(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 84
    nop

    .line 85
    invoke-static {}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getVoicemailRingtoneSharedPrefsKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 86
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "uriString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public static getRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 76
    const-string v0, "voiceMail"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/util/NotificationChannelController;->getChannel(Ljava/lang/String;Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 78
    .local v0, "channel":Landroid/app/NotificationChannel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getRingTonePreference(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getVibrationPreference(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 61
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p0, v0}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->migrateVoicemailVibrationSettingsIfNeeded(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 63
    invoke-static {}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getVoicemailVibrationSharedPrefsKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static getVoicemailRingtoneSharedPrefsKey()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "voicemail_notification_ringtone_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    return-object v0
.end method

.method private static getVoicemailVibrationSharedPrefsKey()Ljava/lang/String;
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "voicemail_notification_vibrate_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    return-object v0
.end method

.method public static isVibrationEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 55
    const-string v0, "voiceMail"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/util/NotificationChannelController;->getChannel(Ljava/lang/String;Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 57
    .local v0, "channel":Landroid/app/NotificationChannel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getVibrationPreference(Landroid/content/Context;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method private static migrateVoicemailRingtoneSettingsIfNeeded(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .line 137
    invoke-static {}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getVoicemailRingtoneSharedPrefsKey()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "key":Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 141
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    const-string v2, "button_voicemail_notification_ringtone_key"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    const-string v2, "button_voicemail_notification_ringtone_key"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "uriString":Ljava/lang/String;
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 150
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "button_voicemail_notification_ringtone_key"

    .line 151
    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 152
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 154
    .end local v2    # "uriString":Ljava/lang/String;
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void

    .line 142
    :cond_2
    :goto_0
    return-void
.end method

.method private static migrateVoicemailVibrationSettingsIfNeeded(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .line 98
    invoke-static {}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getVoicemailVibrationSharedPrefsKey()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "key":Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 102
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    const-string v2, "button_voicemail_notification_vibrate_key"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    const-string v2, "button_voicemail_notification_vibrate_key"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 110
    .local v2, "voicemailVibrate":Z
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 111
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "button_voicemail_notification_vibrate_when_key"

    .line 112
    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 113
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 116
    .end local v2    # "voicemailVibrate":Z
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const-string v2, "button_voicemail_notification_vibrate_when_key"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    const-string v2, "button_voicemail_notification_vibrate_when_key"

    const-string v3, "never"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "vibrateWhen":Ljava/lang/String;
    const-string v3, "always"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 123
    .local v3, "voicemailVibrate":Z
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 124
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "button_voicemail_notification_vibrate_key"

    .line 125
    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 126
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    .end local v2    # "vibrateWhen":Ljava/lang/String;
    .end local v3    # "voicemailVibrate":Z
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    return-void

    .line 103
    :cond_3
    :goto_0
    return-void
.end method

.method public static setRingtoneUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .line 67
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 70
    .local v1, "ringtoneUriStr":Ljava/lang/String;
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 71
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getVoicemailRingtoneSharedPrefsKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 73
    return-void
.end method

.method public static setVibrationEnabled(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isEnabled"    # Z

    .line 48
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 49
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 50
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/android/internal/telephony/util/VoicemailNotificationSettingsUtil;->getVoicemailVibrationSharedPrefsKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    return-void
.end method
