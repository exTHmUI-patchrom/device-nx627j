.class public final synthetic Landroid/hardware/camera2/utils/-$$Lambda$TaskDrainer$Jb53sDskEXp_qIjiikQeCRx0wJs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/hardware/camera2/utils/TaskDrainer;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/camera2/utils/TaskDrainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/utils/-$$Lambda$TaskDrainer$Jb53sDskEXp_qIjiikQeCRx0wJs;->f$0:Landroid/hardware/camera2/utils/TaskDrainer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/utils/-$$Lambda$TaskDrainer$Jb53sDskEXp_qIjiikQeCRx0wJs;->f$0:Landroid/hardware/camera2/utils/TaskDrainer;

    invoke-static {v0}, Landroid/hardware/camera2/utils/TaskDrainer;->lambda$postDrained$0(Landroid/hardware/camera2/utils/TaskDrainer;)V

    return-void
.end method
