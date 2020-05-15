.class Lcn/nubia/server/presssensor/PressGestureListener$2;
.super Ljava/lang/Object;
.source "PressGestureListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/presssensor/PressGestureListener;->onGestureDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/presssensor/PressGestureListener;


# direct methods
.method constructor <init>(Lcn/nubia/server/presssensor/PressGestureListener;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/presssensor/PressGestureListener;

    .line 194
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressGestureListener$2;->this$0:Lcn/nubia/server/presssensor/PressGestureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 196
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureListener$2;->this$0:Lcn/nubia/server/presssensor/PressGestureListener;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressGestureListener;->access$300(Lcn/nubia/server/presssensor/PressGestureListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureListener$2;->this$0:Lcn/nubia/server/presssensor/PressGestureListener;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressGestureListener;->access$400(Lcn/nubia/server/presssensor/PressGestureListener;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 199
    :cond_0
    return-void
.end method
