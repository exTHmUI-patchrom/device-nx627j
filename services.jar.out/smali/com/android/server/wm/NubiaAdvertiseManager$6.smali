.class Lcom/android/server/wm/NubiaAdvertiseManager$6;
.super Ljava/lang/Object;
.source "NubiaAdvertiseManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/NubiaAdvertiseManager;->addAdvertising(Landroid/os/IBinder;Lcom/android/internal/policy/PhoneWindow;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

.field final synthetic val$appToken:Landroid/os/IBinder;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/wm/NubiaAdvertiseManager;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/NubiaAdvertiseManager;

    .line 675
    iput-object p1, p0, Lcom/android/server/wm/NubiaAdvertiseManager$6;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    iput-object p2, p0, Lcom/android/server/wm/NubiaAdvertiseManager$6;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/wm/NubiaAdvertiseManager$6;->val$appToken:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 679
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$6;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v0}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$300(Lcom/android/server/wm/NubiaAdvertiseManager;)Lnubia/os/advt/IAdControlInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager$6;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v1}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$1200(Lcom/android/server/wm/NubiaAdvertiseManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/NubiaAdvertiseManager$6;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v2}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$1300(Lcom/android/server/wm/NubiaAdvertiseManager;)Lnubia/os/advt/AdPicture;

    move-result-object v2

    invoke-virtual {v2}, Lnubia/os/advt/AdPicture;->getAd_id()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/wm/NubiaAdvertiseManager$6;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v4}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$1400(Lcom/android/server/wm/NubiaAdvertiseManager;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lnubia/os/advt/IAdControlInterface;->onAdClick(Ljava/lang/String;JLjava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$6;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager$6;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$2300(Lcom/android/server/wm/NubiaAdvertiseManager;Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$6;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-virtual {v0}, Lcom/android/server/wm/NubiaAdvertiseManager;->removeCallback()V

    .line 684
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$6;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v0}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$1700(Lcom/android/server/wm/NubiaAdvertiseManager;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager$6;->val$appToken:Landroid/os/IBinder;

    .line 685
    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 686
    .local v0, "token":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V

    .line 689
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager$6;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v1}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$000(Lcom/android/server/wm/NubiaAdvertiseManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    .end local v0    # "token":Lcom/android/server/wm/AppWindowToken;
    goto :goto_0

    .line 690
    :catch_0
    move-exception v0

    .line 691
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 693
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
