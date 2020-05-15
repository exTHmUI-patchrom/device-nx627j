.class Lcom/android/server/wm/NubiaAdvertiseManager$3;
.super Lnubia/os/advt/IAdCallback$Stub;
.source "NubiaAdvertiseManager.java"


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

    .line 452
    iput-object p1, p0, Lcom/android/server/wm/NubiaAdvertiseManager$3;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-direct {p0}, Lnubia/os/advt/IAdCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlackListChange(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnubia/os/advt/AdBlackItem;",
            ">;)V"
        }
    .end annotation

    .line 465
    .local p1, "adBlackItemList":Ljava/util/List;, "Ljava/util/List<Lnubia/os/advt/AdBlackItem;>;"
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$3;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v0, p1}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$702(Lcom/android/server/wm/NubiaAdvertiseManager;Ljava/util/List;)Ljava/util/List;

    .line 466
    return-void
.end method

.method public onConfigChange(Lnubia/os/advt/AdConfig;)V
    .locals 1
    .param p1, "adConfig"    # Lnubia/os/advt/AdConfig;

    .line 472
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$3;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v0, p1}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$502(Lcom/android/server/wm/NubiaAdvertiseManager;Lnubia/os/advt/AdConfig;)Lnubia/os/advt/AdConfig;

    .line 473
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$3;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v0}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$1100(Lcom/android/server/wm/NubiaAdvertiseManager;)V

    .line 474
    return-void
.end method

.method public onWhiteListChange(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnubia/os/advt/AdWhiteItem;",
            ">;)V"
        }
    .end annotation

    .line 457
    .local p1, "adWhiteItemList":Ljava/util/List;, "Ljava/util/List<Lnubia/os/advt/AdWhiteItem;>;"
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$3;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v0, p1}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$602(Lcom/android/server/wm/NubiaAdvertiseManager;Ljava/util/List;)Ljava/util/List;

    .line 458
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$3;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v0}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$1000(Lcom/android/server/wm/NubiaAdvertiseManager;)V

    .line 459
    return-void
.end method
