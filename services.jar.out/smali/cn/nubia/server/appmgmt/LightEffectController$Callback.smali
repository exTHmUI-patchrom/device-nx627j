.class final Lcn/nubia/server/appmgmt/LightEffectController$Callback;
.super Ljava/lang/Object;
.source "LightEffectController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/LightEffectController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/LightEffectController;


# direct methods
.method private constructor <init>(Lcn/nubia/server/appmgmt/LightEffectController;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcn/nubia/server/appmgmt/LightEffectController$Callback;->this$0:Lcn/nubia/server/appmgmt/LightEffectController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/appmgmt/LightEffectController;Lcn/nubia/server/appmgmt/LightEffectController$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/appmgmt/LightEffectController;
    .param p2, "x1"    # Lcn/nubia/server/appmgmt/LightEffectController$1;

    .line 106
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/LightEffectController$Callback;-><init>(Lcn/nubia/server/appmgmt/LightEffectController;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 109
    invoke-static {}, Lcn/nubia/server/appmgmt/LightEffectController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcn/nubia/server/appmgmt/LightEffectController$Callback;->this$0:Lcn/nubia/server/appmgmt/LightEffectController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/LightEffectController;->access$100(Lcn/nubia/server/appmgmt/LightEffectController;)V

    .line 111
    iget-object v0, p0, Lcn/nubia/server/appmgmt/LightEffectController$Callback;->this$0:Lcn/nubia/server/appmgmt/LightEffectController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/LightEffectController;->access$200(Lcn/nubia/server/appmgmt/LightEffectController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/LightEffectController$Callback;->this$0:Lcn/nubia/server/appmgmt/LightEffectController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/LightEffectController;->access$302(Lcn/nubia/server/appmgmt/LightEffectController;Lnubia/os/IAudioPlayCallback;)Lnubia/os/IAudioPlayCallback;

    .line 113
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
