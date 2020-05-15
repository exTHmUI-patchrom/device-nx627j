.class Lcn/nubia/server/presssensor/PressGestureListener$1;
.super Ljava/lang/Object;
.source "PressGestureListener.java"

# interfaces
.implements Lcn/nubia/server/presssensor/PressGestureMutex$DisallowedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/presssensor/PressGestureListener;-><init>(Landroid/content/Context;Lcn/nubia/server/presssensor/PressSensorService;Lcn/nubia/server/presssensor/PressGestureSettings;Lcn/nubia/server/presssensor/PressGestureMutex;)V
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

    .line 49
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressGestureListener$1;->this$0:Lcn/nubia/server/presssensor/PressGestureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disallowed()V
    .locals 2

    .line 51
    const-string v0, "PressSensorService"

    const-string v1, "[GestureListener] disallowed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureListener$1;->this$0:Lcn/nubia/server/presssensor/PressGestureListener;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressGestureListener;->access$000(Lcn/nubia/server/presssensor/PressGestureListener;)V

    .line 53
    return-void
.end method

.method public interruptPaintEgg()V
    .locals 2

    .line 60
    const-string v0, "PressSensorService"

    const-string v1, "[GestureListener] interrupt paint egg"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureListener$1;->this$0:Lcn/nubia/server/presssensor/PressGestureListener;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressGestureListener;->access$200(Lcn/nubia/server/presssensor/PressGestureListener;)V

    .line 62
    return-void
.end method

.method public isNeedDisallow()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureListener$1;->this$0:Lcn/nubia/server/presssensor/PressGestureListener;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressGestureListener;->access$100(Lcn/nubia/server/presssensor/PressGestureListener;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
