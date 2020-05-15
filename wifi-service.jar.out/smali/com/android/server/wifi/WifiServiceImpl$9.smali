.class Lcom/android/server/wifi/WifiServiceImpl$9;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;->registerForBroadcasts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .line 2891
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$9;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onReceive$0(Lcom/android/server/wifi/WifiServiceImpl$9;Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2905
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$9;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mScanRequestProxy:Lcom/android/server/wifi/ScanRequestProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/ScanRequestProxy;->clearScanRequestTimestampsForApp(Ljava/lang/String;I)V

    .line 2906
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2894
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2895
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2896
    const-string v1, "android.intent.extra.UID"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2897
    .local v1, "uid":I
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 2898
    .local v3, "uri":Landroid/net/Uri;
    if-eq v1, v2, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    .line 2901
    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 2902
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl$9;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v4, v4, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4, v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->removeAppConfigs(Ljava/lang/String;I)V

    .line 2904
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl$9;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v4, v4, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineHandler:Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

    new-instance v5, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$9$ghLpdSAhfeBD4wfu3GsYGywYQp0;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$9$ghLpdSAhfeBD4wfu3GsYGywYQp0;-><init>(Lcom/android/server/wifi/WifiServiceImpl$9;Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->post(Ljava/lang/Runnable;)Z

    .end local v1    # "uid":I
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 2899
    .restart local v1    # "uid":I
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 2908
    .end local v1    # "uid":I
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_1
    return-void
.end method
