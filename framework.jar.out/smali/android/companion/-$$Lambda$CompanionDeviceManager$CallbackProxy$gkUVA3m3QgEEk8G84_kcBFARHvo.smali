.class public final synthetic Landroid/companion/-$$Lambda$CompanionDeviceManager$CallbackProxy$gkUVA3m3QgEEk8G84_kcBFARHvo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/companion/CompanionDeviceManager$CallbackProxy;

.field private final synthetic f$1:Ljava/util/function/BiConsumer;

.field private final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/companion/CompanionDeviceManager$CallbackProxy;Ljava/util/function/BiConsumer;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/-$$Lambda$CompanionDeviceManager$CallbackProxy$gkUVA3m3QgEEk8G84_kcBFARHvo;->f$0:Landroid/companion/CompanionDeviceManager$CallbackProxy;

    iput-object p2, p0, Landroid/companion/-$$Lambda$CompanionDeviceManager$CallbackProxy$gkUVA3m3QgEEk8G84_kcBFARHvo;->f$1:Ljava/util/function/BiConsumer;

    iput-object p3, p0, Landroid/companion/-$$Lambda$CompanionDeviceManager$CallbackProxy$gkUVA3m3QgEEk8G84_kcBFARHvo;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/companion/-$$Lambda$CompanionDeviceManager$CallbackProxy$gkUVA3m3QgEEk8G84_kcBFARHvo;->f$0:Landroid/companion/CompanionDeviceManager$CallbackProxy;

    iget-object v1, p0, Landroid/companion/-$$Lambda$CompanionDeviceManager$CallbackProxy$gkUVA3m3QgEEk8G84_kcBFARHvo;->f$1:Ljava/util/function/BiConsumer;

    iget-object v2, p0, Landroid/companion/-$$Lambda$CompanionDeviceManager$CallbackProxy$gkUVA3m3QgEEk8G84_kcBFARHvo;->f$2:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/companion/CompanionDeviceManager$CallbackProxy;->lambda$lockAndPost$0(Landroid/companion/CompanionDeviceManager$CallbackProxy;Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    return-void
.end method
