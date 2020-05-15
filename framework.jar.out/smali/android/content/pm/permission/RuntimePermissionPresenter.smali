.class public final Landroid/content/pm/permission/RuntimePermissionPresenter;
.super Ljava/lang/Object;
.source "RuntimePermissionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;,
        Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;
    }
.end annotation


# static fields
.field public static final KEY_RESULT:Ljava/lang/String; = "android.content.pm.permission.RuntimePermissionPresenter.key.result"

.field private static final TAG:Ljava/lang/String; = "RuntimePermPresenter"

.field private static sInstance:Landroid/content/pm/permission/RuntimePermissionPresenter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mRemoteService:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/pm/permission/RuntimePermissionPresenter;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

    invoke-direct {v0, p1}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter;->mRemoteService:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

    .line 101
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/content/pm/permission/RuntimePermissionPresenter;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 91
    sget-object v0, Landroid/content/pm/permission/RuntimePermissionPresenter;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_0
    sget-object v1, Landroid/content/pm/permission/RuntimePermissionPresenter;->sInstance:Landroid/content/pm/permission/RuntimePermissionPresenter;

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Landroid/content/pm/permission/RuntimePermissionPresenter;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/permission/RuntimePermissionPresenter;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/content/pm/permission/RuntimePermissionPresenter;->sInstance:Landroid/content/pm/permission/RuntimePermissionPresenter;

    .line 95
    :cond_0
    sget-object v1, Landroid/content/pm/permission/RuntimePermissionPresenter;->sInstance:Landroid/content/pm/permission/RuntimePermissionPresenter;

    monitor-exit v0

    return-object v1

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getAppPermissions(Ljava/lang/String;Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 112
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 113
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 114
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 115
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 116
    iget-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter;->mRemoteService:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 118
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter;->mRemoteService:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

    invoke-virtual {v2, v1}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->processMessage(Landroid/os/Message;)V

    .line 119
    return-void
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;

    .line 128
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 129
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 130
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter;->mRemoteService:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 134
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter;->mRemoteService:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

    invoke-virtual {v2, v1}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->processMessage(Landroid/os/Message;)V

    .line 135
    return-void
.end method
