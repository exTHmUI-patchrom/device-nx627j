.class final Landroid/app/ActivityThread$PurgeIdler;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PurgeIdler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    .line 2077
    iput-object p1, p0, Landroid/app/ActivityThread$PurgeIdler;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 3

    .line 2080
    const-string/jumbo v0, "purgePendingResources"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2081
    iget-object v0, p0, Landroid/app/ActivityThread$PurgeIdler;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->access$3900(Landroid/app/ActivityThread;)V

    .line 2082
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2083
    const/4 v0, 0x0

    return v0
.end method
