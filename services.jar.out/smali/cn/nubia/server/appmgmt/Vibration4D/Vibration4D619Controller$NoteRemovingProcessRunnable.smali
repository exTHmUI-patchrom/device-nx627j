.class public Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NoteRemovingProcessRunnable;
.super Ljava/lang/Object;
.source "Vibration4D619Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoteRemovingProcessRunnable"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mProcessName:Ljava/lang/String;

.field private mStackId:I

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "processName"    # Ljava/lang/String;

    .line 132
    iput-object p1, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput p2, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NoteRemovingProcessRunnable;->mUid:I

    .line 134
    iput-object p3, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NoteRemovingProcessRunnable;->mPackageName:Ljava/lang/String;

    .line 135
    iput-object p4, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NoteRemovingProcessRunnable;->mProcessName:Ljava/lang/String;

    .line 136
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 140
    const-string/jumbo v0, "sys.perf.activate"

    const-string/jumbo v1, "unknow"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "ForegroudPkg":Ljava/lang/String;
    const-string/jumbo v1, "sys.perf.processname"

    const-string/jumbo v2, "unknow"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "ForegroudProcess":Ljava/lang/String;
    iget-object v2, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    invoke-static {v2, v0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->access$000(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NoteRemovingProcessRunnable;->mProcessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    :cond_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NoteRemovingProcessRunnable;->mPackageName:Ljava/lang/String;

    const-string v4, "RemovingProcess"

    invoke-static {v2, v3, v4}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->access$100(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_1
    iget-object v2, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    invoke-static {v2, v0}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->access$200(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NoteRemovingProcessRunnable;->mProcessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 147
    :cond_2
    iget-object v2, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller$NoteRemovingProcessRunnable;->mPackageName:Ljava/lang/String;

    const-string v4, "RemovingProcess"

    invoke-static {v2, v3, v4}, Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;->access$300(Lcn/nubia/server/appmgmt/Vibration4D/Vibration4D619Controller;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_3
    return-void
.end method
