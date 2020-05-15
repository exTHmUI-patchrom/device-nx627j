.class public final synthetic Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$vZThyvjDQhg2J1GAeOWCNqy2iiw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/ThreadedRenderer$FrameDrawingCallback;


# instance fields
.field private final synthetic f$0:Landroid/widget/Magnifier$InternalPopupWindow;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Z

.field private final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Magnifier$InternalPopupWindow;IIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$vZThyvjDQhg2J1GAeOWCNqy2iiw;->f$0:Landroid/widget/Magnifier$InternalPopupWindow;

    iput p2, p0, Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$vZThyvjDQhg2J1GAeOWCNqy2iiw;->f$1:I

    iput p3, p0, Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$vZThyvjDQhg2J1GAeOWCNqy2iiw;->f$2:I

    iput-boolean p4, p0, Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$vZThyvjDQhg2J1GAeOWCNqy2iiw;->f$3:Z

    iput-boolean p5, p0, Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$vZThyvjDQhg2J1GAeOWCNqy2iiw;->f$4:Z

    return-void
.end method


# virtual methods
.method public final onFrameDraw(J)V
    .locals 7

    iget-object v0, p0, Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$vZThyvjDQhg2J1GAeOWCNqy2iiw;->f$0:Landroid/widget/Magnifier$InternalPopupWindow;

    iget v1, p0, Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$vZThyvjDQhg2J1GAeOWCNqy2iiw;->f$1:I

    iget v2, p0, Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$vZThyvjDQhg2J1GAeOWCNqy2iiw;->f$2:I

    iget-boolean v3, p0, Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$vZThyvjDQhg2J1GAeOWCNqy2iiw;->f$3:Z

    iget-boolean v4, p0, Landroid/widget/-$$Lambda$Magnifier$InternalPopupWindow$vZThyvjDQhg2J1GAeOWCNqy2iiw;->f$4:Z

    move-wide v5, p1

    invoke-static/range {v0 .. v6}, Landroid/widget/Magnifier$InternalPopupWindow;->lambda$doDraw$0(Landroid/widget/Magnifier$InternalPopupWindow;IIZZJ)V

    return-void
.end method
