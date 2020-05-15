.class Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;
.super Landroid/database/ContentObserver;
.source "WifiAwareServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->start(Landroid/os/HandlerThread;Lcom/android/server/wifi/aware/WifiAwareStateManager;Lcom/android/server/wifi/aware/WifiAwareShellCommand;Lcom/android/server/wifi/aware/WifiAwareMetrics;Lcom/android/server/wifi/util/WifiPermissionsUtil;Lcom/android/server/wifi/util/WifiPermissionsWrapper;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/aware/WifiAwareNativeManager;Lcom/android/server/wifi/aware/WifiAwareNativeApi;Lcom/android/server/wifi/aware/WifiAwareNativeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

.field final synthetic val$awareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

.field final synthetic val$frameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

.field final synthetic val$wifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

.field final synthetic val$wifiAwareNativeCallback:Lcom/android/server/wifi/aware/WifiAwareNativeCallback;

.field final synthetic val$wifiAwareNativeManager:Lcom/android/server/wifi/aware/WifiAwareNativeManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/aware/WifiAwareServiceImpl;Landroid/os/Handler;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/aware/WifiAwareStateManager;Lcom/android/server/wifi/aware/WifiAwareNativeManager;Lcom/android/server/wifi/aware/WifiAwareNativeApi;Lcom/android/server/wifi/aware/WifiAwareNativeCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/aware/WifiAwareServiceImpl;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 111
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;->this$0:Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    iput-object p3, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;->val$frameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    iput-object p4, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;->val$awareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iput-object p5, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;->val$wifiAwareNativeManager:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    iput-object p6, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;->val$wifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    iput-object p7, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;->val$wifiAwareNativeCallback:Lcom/android/server/wifi/aware/WifiAwareNativeCallback;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .line 114
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;->this$0:Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;->val$frameworkFacade:Lcom/android/server/wifi/FrameworkFacade;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;->this$0:Lcom/android/server/wifi/aware/WifiAwareServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->access$000(Lcom/android/server/wifi/aware/WifiAwareServiceImpl;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi_verbose_logging_enabled"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;->val$awareStateManager:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;->val$wifiAwareNativeManager:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;->val$wifiAwareNativeApi:Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareServiceImpl$1;->val$wifiAwareNativeCallback:Lcom/android/server/wifi/aware/WifiAwareNativeCallback;

    invoke-static/range {v0 .. v5}, Lcom/android/server/wifi/aware/WifiAwareServiceImpl;->access$100(Lcom/android/server/wifi/aware/WifiAwareServiceImpl;ILcom/android/server/wifi/aware/WifiAwareStateManager;Lcom/android/server/wifi/aware/WifiAwareNativeManager;Lcom/android/server/wifi/aware/WifiAwareNativeApi;Lcom/android/server/wifi/aware/WifiAwareNativeCallback;)V

    .line 118
    return-void
.end method
