.class Lcn/nubia/server/presssensor/PressGestureMutex$3;
.super Landroid/database/ContentObserver;
.source "PressGestureMutex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/presssensor/PressGestureMutex;-><init>(Landroid/content/Context;Lcn/nubia/server/presssensor/PressGestureSettings;Lcn/nubia/server/presssensor/PressSensorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/presssensor/PressGestureMutex;


# direct methods
.method constructor <init>(Lcn/nubia/server/presssensor/PressGestureMutex;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/presssensor/PressGestureMutex;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 112
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressGestureMutex$3;->this$0:Lcn/nubia/server/presssensor/PressGestureMutex;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 115
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "name":Ljava/lang/String;
    const-string v1, "device_provisioned"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex$3;->this$0:Lcn/nubia/server/presssensor/PressGestureMutex;

    iget-object v2, p0, Lcn/nubia/server/presssensor/PressGestureMutex$3;->this$0:Lcn/nubia/server/presssensor/PressGestureMutex;

    invoke-static {v2}, Lcn/nubia/server/presssensor/PressGestureMutex;->access$400(Lcn/nubia/server/presssensor/PressGestureMutex;)Z

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/server/presssensor/PressGestureMutex;->access$302(Lcn/nubia/server/presssensor/PressGestureMutex;Z)Z

    goto :goto_0

    .line 118
    :cond_0
    const-string/jumbo v1, "virtual_game_key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex$3;->this$0:Lcn/nubia/server/presssensor/PressGestureMutex;

    iget-object v2, p0, Lcn/nubia/server/presssensor/PressGestureMutex$3;->this$0:Lcn/nubia/server/presssensor/PressGestureMutex;

    invoke-static {v2}, Lcn/nubia/server/presssensor/PressGestureMutex;->access$600(Lcn/nubia/server/presssensor/PressGestureMutex;)Z

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/server/presssensor/PressGestureMutex;->access$502(Lcn/nubia/server/presssensor/PressGestureMutex;Z)Z

    .line 121
    :cond_1
    :goto_0
    return-void
.end method
