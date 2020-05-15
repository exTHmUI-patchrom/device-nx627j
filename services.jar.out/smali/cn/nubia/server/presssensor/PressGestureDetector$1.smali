.class Lcn/nubia/server/presssensor/PressGestureDetector$1;
.super Ljava/lang/Object;
.source "PressGestureDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/presssensor/PressGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/presssensor/PressGestureDetector;


# direct methods
.method constructor <init>(Lcn/nubia/server/presssensor/PressGestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/presssensor/PressGestureDetector;

    .line 67
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressGestureDetector$1;->this$0:Lcn/nubia/server/presssensor/PressGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 71
    .local v0, "time":J
    iget-object v2, p0, Lcn/nubia/server/presssensor/PressGestureDetector$1;->this$0:Lcn/nubia/server/presssensor/PressGestureDetector;

    invoke-static {v2}, Lcn/nubia/server/presssensor/PressGestureDetector;->access$000(Lcn/nubia/server/presssensor/PressGestureDetector;)Landroid/os/PowerManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 73
    iget-object v2, p0, Lcn/nubia/server/presssensor/PressGestureDetector$1;->this$0:Lcn/nubia/server/presssensor/PressGestureDetector;

    invoke-static {v2, v3}, Lcn/nubia/server/presssensor/PressGestureDetector;->access$102(Lcn/nubia/server/presssensor/PressGestureDetector;Z)Z

    .line 74
    return-void
.end method
