.class public Lnubia/media/NubiaMediaScanner;
.super Ljava/lang/Object;
.source "NubiaMediaScanner.java"


# static fields
.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final MESSAGE_SOUND:Ljava/lang/String; = "message_sound"

.field private static final TAG:Ljava/lang/String; = "NubiaMediaScanner"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultMessageFilename:Ljava/lang/String;

.field private mDefaultMessageSet:Z

.field private mNeedToSetMessageSetting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lnubia/media/NubiaMediaScanner;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 4
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "rowId"    # J

    .line 80
    invoke-direct {p0, p1}, Lnubia/media/NubiaMediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lnubia/media/NubiaMediaScanner;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 83
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "existingSettingValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lnubia/media/NubiaMediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 87
    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 88
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
    :cond_1
    iget-object v1, p0, Lnubia/media/NubiaMediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, p1}, Lnubia/media/NubiaMediaScanner;->settingSetIndicatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 91
    return-void
.end method

.method private settingSetIndicatorName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "base"    # Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private wasRingtoneAlreadySet(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lnubia/media/NubiaMediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 99
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-direct {p0, p1}, Lnubia/media/NubiaMediaScanner;->settingSetIndicatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "indicatorName":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2

    .line 102
    :catch_0
    move-exception v3

    .line 103
    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    return v2
.end method


# virtual methods
.method public doesPathHaveFilename(Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .line 67
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 68
    .local v0, "pathFilenameStart":I
    invoke-virtual {p0}, Lnubia/media/NubiaMediaScanner;->getDefaultMeaasgeFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 69
    .local v2, "filenameLength":I
    nop

    .line 70
    invoke-virtual {p0}, Lnubia/media/NubiaMediaScanner;->getDefaultMeaasgeFileName()Ljava/lang/String;

    move-result-object v3

    .line 69
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v3, v4, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int v3, v0, v2

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v3, v5, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    .line 72
    .local v1, "result":Z
    :goto_0
    return v1
.end method

.method public getDefaultMeaasgeFileName()Ljava/lang/String;
    .locals 1

    .line 32
    const-string v0, "ro.config.message_sound"

    .line 33
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnubia/media/NubiaMediaScanner;->mDefaultMessageFilename:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lnubia/media/NubiaMediaScanner;->mDefaultMessageFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultMessageSet()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lnubia/media/NubiaMediaScanner;->mDefaultMessageSet:Z

    return v0
.end method

.method public isNeedToSetMessageSetting()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lnubia/media/NubiaMediaScanner;->mNeedToSetMessageSetting:Z

    return v0
.end method

.method public isNeedToSetSettingsForMessage(Ljava/lang/String;ZZZ)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "notifications"    # Z
    .param p3, "need"    # Z
    .param p4, "needToSetSettings"    # Z

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "result":Z
    const/4 v1, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lnubia/media/NubiaMediaScanner;->getDefaultMessageSet()Z

    move-result v2

    if-nez v2, :cond_2

    .line 57
    invoke-virtual {p0}, Lnubia/media/NubiaMediaScanner;->getDefaultMeaasgeFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    invoke-virtual {p0, p1}, Lnubia/media/NubiaMediaScanner;->doesPathHaveFilename(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    move v0, v2

    .line 60
    :cond_2
    if-eqz v0, :cond_3

    .line 61
    invoke-virtual {p0, p3}, Lnubia/media/NubiaMediaScanner;->setNeedToSetMessageSetting(Z)V

    .line 63
    :cond_3
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, p4

    :goto_2
    return v1
.end method

.method public setDefaultMessageSet(Z)V
    .locals 0
    .param p1, "defaultMessageSet"    # Z

    .line 38
    iput-boolean p1, p0, Lnubia/media/NubiaMediaScanner;->mDefaultMessageSet:Z

    .line 39
    return-void
.end method

.method public setNeedToSetMessageSetting(Z)V
    .locals 0
    .param p1, "needToSetMesSetting"    # Z

    .line 50
    iput-boolean p1, p0, Lnubia/media/NubiaMediaScanner;->mNeedToSetMessageSetting:Z

    .line 51
    return-void
.end method

.method public setSettingIfNotSet(Landroid/net/Uri;J)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "rowId"    # J

    .line 76
    const-string v0, "message_sound"

    invoke-direct {p0, v0, p1, p2, p3}, Lnubia/media/NubiaMediaScanner;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 77
    return-void
.end method
