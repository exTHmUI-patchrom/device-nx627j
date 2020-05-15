.class Lcn/nubia/server/appmgmt/SysStateProducer$NoteKeyguardStateRunnable;
.super Ljava/lang/Object;
.source "SysStateProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/SysStateProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoteKeyguardStateRunnable"
.end annotation


# instance fields
.field private mState:Z

.field final synthetic this$0:Lcn/nubia/server/appmgmt/SysStateProducer;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/SysStateProducer;Z)V
    .locals 0
    .param p2, "state"    # Z

    .line 569
    iput-object p1, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteKeyguardStateRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iput-boolean p2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteKeyguardStateRunnable;->mState:Z

    .line 571
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 575
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 576
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "keyguard"

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteKeyguardStateRunnable;->mState:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 577
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 578
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x836

    iput v2, v1, Landroid/os/Message;->what:I

    .line 579
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 581
    iget-object v2, p0, Lcn/nubia/server/appmgmt/SysStateProducer$NoteKeyguardStateRunnable;->this$0:Lcn/nubia/server/appmgmt/SysStateProducer;

    const-wide/16 v3, 0x40

    invoke-static {v2, v1, v3, v4}, Lcn/nubia/server/appmgmt/SysStateProducer;->access$200(Lcn/nubia/server/appmgmt/SysStateProducer;Landroid/os/Message;J)V

    .line 582
    return-void
.end method
