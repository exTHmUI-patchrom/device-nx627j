.class public Lcom/android/internal/telephony/uicc/CarrierAppInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CarrierAppInstallReceiver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CarrierAppInstall"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 32
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    const-string v0, "CarrierAppInstall"

    const-string v1, "Received package install intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "intentPackageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const-string v1, "CarrierAppInstall"

    const-string v2, "Package is empty, ignoring"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void

    .line 40
    :cond_0
    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->hideNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->isPackageInstallNotificationActive(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 43
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/InstallCarrierAppUtils;->unregisterPackageInstallReceiver(Landroid/content/Context;)V

    .line 46
    .end local v0    # "intentPackageName":Ljava/lang/String;
    :cond_1
    return-void
.end method
