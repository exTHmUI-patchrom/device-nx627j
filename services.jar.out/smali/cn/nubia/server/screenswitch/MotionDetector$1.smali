.class Lcn/nubia/server/screenswitch/MotionDetector$1;
.super Ljava/lang/Object;
.source "MotionDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/screenswitch/MotionDetector;->setCurrentDisplayId(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/screenswitch/MotionDetector;

.field final synthetic val$displayId:I


# direct methods
.method constructor <init>(Lcn/nubia/server/screenswitch/MotionDetector;I)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/screenswitch/MotionDetector;

    .line 88
    iput-object p1, p0, Lcn/nubia/server/screenswitch/MotionDetector$1;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    iput p2, p0, Lcn/nubia/server/screenswitch/MotionDetector$1;->val$displayId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 90
    sget-boolean v0, Lcn/nubia/server/screenswitch/MotionDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotionDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentDisplayId displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/nubia/server/screenswitch/MotionDetector$1;->val$displayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/MotionDetector$1;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    iget v1, p0, Lcn/nubia/server/screenswitch/MotionDetector$1;->val$displayId:I

    invoke-static {v0, v1}, Lcn/nubia/server/screenswitch/MotionDetector;->access$102(Lcn/nubia/server/screenswitch/MotionDetector;I)I

    .line 92
    iget-object v0, p0, Lcn/nubia/server/screenswitch/MotionDetector$1;->this$0:Lcn/nubia/server/screenswitch/MotionDetector;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/MotionDetector;->access$200(Lcn/nubia/server/screenswitch/MotionDetector;)Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/screenswitch/MotionDetector$SensorJudge;->resetAuto()V

    .line 93
    return-void
.end method
