.class public final synthetic Landroid/app/-$$Lambda$LoadedApk$ReceiverDispatcher$Args$tkFogufvjhTFlZP5CzeKo81hMQQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/app/LoadedApk$ReceiverDispatcher$Args;

.field private final synthetic f$1:Landroid/content/Intent;

.field private final synthetic f$2:Landroid/content/BroadcastReceiver;

.field private final synthetic f$3:Z

.field private final synthetic f$4:Landroid/app/IActivityManager;


# direct methods
.method public synthetic constructor <init>(Landroid/app/LoadedApk$ReceiverDispatcher$Args;Landroid/content/Intent;Landroid/content/BroadcastReceiver;ZLandroid/app/IActivityManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$LoadedApk$ReceiverDispatcher$Args$tkFogufvjhTFlZP5CzeKo81hMQQ;->f$0:Landroid/app/LoadedApk$ReceiverDispatcher$Args;

    iput-object p2, p0, Landroid/app/-$$Lambda$LoadedApk$ReceiverDispatcher$Args$tkFogufvjhTFlZP5CzeKo81hMQQ;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Landroid/app/-$$Lambda$LoadedApk$ReceiverDispatcher$Args$tkFogufvjhTFlZP5CzeKo81hMQQ;->f$2:Landroid/content/BroadcastReceiver;

    iput-boolean p4, p0, Landroid/app/-$$Lambda$LoadedApk$ReceiverDispatcher$Args$tkFogufvjhTFlZP5CzeKo81hMQQ;->f$3:Z

    iput-object p5, p0, Landroid/app/-$$Lambda$LoadedApk$ReceiverDispatcher$Args$tkFogufvjhTFlZP5CzeKo81hMQQ;->f$4:Landroid/app/IActivityManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroid/app/-$$Lambda$LoadedApk$ReceiverDispatcher$Args$tkFogufvjhTFlZP5CzeKo81hMQQ;->f$0:Landroid/app/LoadedApk$ReceiverDispatcher$Args;

    iget-object v1, p0, Landroid/app/-$$Lambda$LoadedApk$ReceiverDispatcher$Args$tkFogufvjhTFlZP5CzeKo81hMQQ;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Landroid/app/-$$Lambda$LoadedApk$ReceiverDispatcher$Args$tkFogufvjhTFlZP5CzeKo81hMQQ;->f$2:Landroid/content/BroadcastReceiver;

    iget-boolean v3, p0, Landroid/app/-$$Lambda$LoadedApk$ReceiverDispatcher$Args$tkFogufvjhTFlZP5CzeKo81hMQQ;->f$3:Z

    iget-object v4, p0, Landroid/app/-$$Lambda$LoadedApk$ReceiverDispatcher$Args$tkFogufvjhTFlZP5CzeKo81hMQQ;->f$4:Landroid/app/IActivityManager;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->lambda$getRunnable$0(Landroid/app/LoadedApk$ReceiverDispatcher$Args;Landroid/content/Intent;Landroid/content/BroadcastReceiver;ZLandroid/app/IActivityManager;)V

    return-void
.end method
