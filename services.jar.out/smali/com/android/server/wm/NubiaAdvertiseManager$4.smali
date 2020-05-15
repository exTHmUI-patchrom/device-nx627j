.class Lcom/android/server/wm/NubiaAdvertiseManager$4;
.super Ljava/lang/Object;
.source "NubiaAdvertiseManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/NubiaAdvertiseManager;->addJumpTextView(Landroid/os/IBinder;Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

.field final synthetic val$appToken:Landroid/os/IBinder;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/server/wm/NubiaAdvertiseManager;Ljava/lang/String;Landroid/view/View;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/NubiaAdvertiseManager;

    .line 522
    iput-object p1, p0, Lcom/android/server/wm/NubiaAdvertiseManager$4;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    iput-object p2, p0, Lcom/android/server/wm/NubiaAdvertiseManager$4;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/wm/NubiaAdvertiseManager$4;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/android/server/wm/NubiaAdvertiseManager$4;->val$appToken:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .line 526
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$4;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v0}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$300(Lcom/android/server/wm/NubiaAdvertiseManager;)Lnubia/os/advt/IAdControlInterface;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$4;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v0}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$1200(Lcom/android/server/wm/NubiaAdvertiseManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$4;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v0}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$1300(Lcom/android/server/wm/NubiaAdvertiseManager;)Lnubia/os/advt/AdPicture;

    move-result-object v0

    invoke-virtual {v0}, Lnubia/os/advt/AdPicture;->getAd_id()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$4;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    iget-object v5, p0, Lcom/android/server/wm/NubiaAdvertiseManager$4;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    .line 527
    invoke-static {v5}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$1400(Lcom/android/server/wm/NubiaAdvertiseManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/NubiaAdvertiseManager;->getAdDispalyTime(Ljava/lang/String;)I

    move-result v0

    int-to-long v5, v0

    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$4;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v0}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$1500(Lcom/android/server/wm/NubiaAdvertiseManager;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$4;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    .line 528
    invoke-static {v0}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$1400(Lcom/android/server/wm/NubiaAdvertiseManager;)Ljava/lang/String;

    move-result-object v7

    .line 526
    invoke-interface/range {v1 .. v7}, Lnubia/os/advt/IAdControlInterface;->onAdHandClose(Ljava/lang/String;JJLjava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$4;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager$4;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$1600(Lcom/android/server/wm/NubiaAdvertiseManager;Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$4;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-virtual {v0}, Lcom/android/server/wm/NubiaAdvertiseManager;->removeCallback()V

    .line 531
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$4;->val$view:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->removeAllViews()V

    .line 533
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$4;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v0}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$1700(Lcom/android/server/wm/NubiaAdvertiseManager;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager$4;->val$appToken:Landroid/os/IBinder;

    .line 534
    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 535
    .local v0, "token":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V

    .line 538
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager$4;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v1}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$000(Lcom/android/server/wm/NubiaAdvertiseManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    .end local v0    # "token":Lcom/android/server/wm/AppWindowToken;
    goto :goto_0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 542
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
