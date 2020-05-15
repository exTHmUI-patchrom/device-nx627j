.class Lcom/android/server/wm/NubiaAdvertiseManager$5;
.super Ljava/lang/Object;
.source "NubiaAdvertiseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/NubiaAdvertiseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/NubiaAdvertiseManager;


# direct methods
.method constructor <init>(Lcom/android/server/wm/NubiaAdvertiseManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/NubiaAdvertiseManager;

    .line 628
    iput-object p1, p0, Lcom/android/server/wm/NubiaAdvertiseManager$5;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 631
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$5;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v0}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$1800(Lcom/android/server/wm/NubiaAdvertiseManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 633
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$5;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v0}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$1500(Lcom/android/server/wm/NubiaAdvertiseManager;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$5;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v0}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$1900(Lcom/android/server/wm/NubiaAdvertiseManager;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/NubiaAdvertiseManager$5;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v2}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$1500(Lcom/android/server/wm/NubiaAdvertiseManager;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$5;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v0}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$2100(Lcom/android/server/wm/NubiaAdvertiseManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager$5;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v1}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$2000(Lcom/android/server/wm/NubiaAdvertiseManager;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 636
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$5;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v0}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$1510(Lcom/android/server/wm/NubiaAdvertiseManager;)J

    goto :goto_0

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$5;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v0}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$1400(Lcom/android/server/wm/NubiaAdvertiseManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 639
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$5;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager$5;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v1}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$1400(Lcom/android/server/wm/NubiaAdvertiseManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$2200(Lcom/android/server/wm/NubiaAdvertiseManager;Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$5;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v0}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$300(Lcom/android/server/wm/NubiaAdvertiseManager;)Lnubia/os/advt/IAdControlInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/NubiaAdvertiseManager$5;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v1}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$1200(Lcom/android/server/wm/NubiaAdvertiseManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/NubiaAdvertiseManager$5;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v2}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$1300(Lcom/android/server/wm/NubiaAdvertiseManager;)Lnubia/os/advt/AdPicture;

    move-result-object v2

    invoke-virtual {v2}, Lnubia/os/advt/AdPicture;->getAd_id()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/wm/NubiaAdvertiseManager$5;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v4}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$1400(Lcom/android/server/wm/NubiaAdvertiseManager;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lnubia/os/advt/IAdControlInterface;->onAdAutoClose(Ljava/lang/String;JLjava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$5;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v0}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$000(Lcom/android/server/wm/NubiaAdvertiseManager;)V

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$5;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-virtual {v0}, Lcom/android/server/wm/NubiaAdvertiseManager;->removeCallback()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :goto_0
    goto :goto_1

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 649
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method
