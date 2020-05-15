.class public Lcom/android/internal/telephony/uicc/InstallCarrierAppTrampolineActivity;
.super Landroid/app/Activity;
.source "InstallCarrierAppTrampolineActivity.java"


# static fields
.field private static final BUNDLE_KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final CARRIER_NAME:Ljava/lang/String; = "carrier_name"

.field private static final DOWNLOAD_RESULT:I = 0x2

.field private static final INSTALL_CARRIER_APP_DIALOG_REQUEST:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "CarrierAppInstall"


# instance fields
.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private finishNoAnimation()V
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppTrampolineActivity;->finish()V

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppTrampolineActivity;->overridePendingTransition(II)V

    .line 119
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/internal/telephony/uicc/InstallCarrierAppTrampolineActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "package_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 107
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 108
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 109
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/InstallCarrierAppTrampolineActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->getPlayStoreIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppTrampolineActivity;->startActivity(Landroid/content/Intent;)V

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppTrampolineActivity;->finishNoAnimation()V

    .line 114
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppTrampolineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 69
    const-string v1, "package_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/InstallCarrierAppTrampolineActivity;->mPackageName:Ljava/lang/String;

    .line 74
    :cond_0
    if-nez p1, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppTrampolineActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_carrier_app_notification_sleep_millis"

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x18

    .line 77
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    .line 75
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 78
    .local v1, "sleepTimeMillis":J
    const-string v3, "CarrierAppInstall"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sleeping carrier app install notification for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " millis"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/InstallCarrierAppTrampolineActivity;->mPackageName:Ljava/lang/String;

    invoke-static {p0, v3, v1, v2}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->showNotificationIfNotInstalledDelayed(Landroid/content/Context;Ljava/lang/String;J)V

    .line 87
    .end local v1    # "sleepTimeMillis":J
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 89
    .local v1, "showDialogIntent":Landroid/content/Intent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040117

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 91
    .local v2, "dialogComponentName":Landroid/content/ComponentName;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 92
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/InstallCarrierAppTrampolineActivity;->mPackageName:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->getAppNameFromPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "appName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 94
    const-string v4, "carrier_name"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppTrampolineActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_3

    .line 98
    const-string v4, "CarrierAppInstall"

    const-string v5, "Could not resolve activity for installing the carrier app"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppTrampolineActivity;->finishNoAnimation()V

    goto :goto_0

    .line 101
    :cond_3
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/android/internal/telephony/uicc/InstallCarrierAppTrampolineActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 103
    :goto_0
    return-void
.end method
