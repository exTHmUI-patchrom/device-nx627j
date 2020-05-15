.class public abstract Landroid/service/notification/ConditionProviderService;
.super Landroid/app/Service;
.source "ConditionProviderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ConditionProviderService$H;,
        Landroid/service/notification/ConditionProviderService$Provider;
    }
.end annotation


# static fields
.field public static final EXTRA_RULE_ID:Ljava/lang/String; = "android.service.notification.extra.RULE_ID"

.field public static final META_DATA_CONFIGURATION_ACTIVITY:Ljava/lang/String; = "android.service.zen.automatic.configurationActivity"

.field public static final META_DATA_RULE_INSTANCE_LIMIT:Ljava/lang/String; = "android.service.zen.automatic.ruleInstanceLimit"

.field public static final META_DATA_RULE_TYPE:Ljava/lang/String; = "android.service.zen.automatic.ruleType"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.notification.ConditionProviderService"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mHandler:Landroid/service/notification/ConditionProviderService$H;

.field private mNoMan:Landroid/app/INotificationManager;

.field private mProvider:Landroid/service/notification/ConditionProviderService$Provider;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/service/notification/ConditionProviderService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ConditionProviderService;->TAG:Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/service/notification/ConditionProviderService$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/notification/ConditionProviderService$H;-><init>(Landroid/service/notification/ConditionProviderService;Landroid/service/notification/ConditionProviderService$1;)V

    iput-object v0, p0, Landroid/service/notification/ConditionProviderService;->mHandler:Landroid/service/notification/ConditionProviderService$H;

    return-void
.end method

.method static synthetic access$200(Landroid/service/notification/ConditionProviderService;)Landroid/service/notification/ConditionProviderService$H;
    .locals 1
    .param p0, "x0"    # Landroid/service/notification/ConditionProviderService;

    .line 64
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->mHandler:Landroid/service/notification/ConditionProviderService$H;

    return-object v0
.end method

.method static synthetic access$300(Landroid/service/notification/ConditionProviderService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/service/notification/ConditionProviderService;

    .line 64
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final getNotificationInterface()Landroid/app/INotificationManager;
    .locals 1

    .line 126
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->mNoMan:Landroid/app/INotificationManager;

    if-nez v0, :cond_0

    .line 127
    const-string/jumbo v0, "notification"

    .line 128
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 127
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ConditionProviderService;->mNoMan:Landroid/app/INotificationManager;

    .line 130
    :cond_0
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->mNoMan:Landroid/app/INotificationManager;

    return-object v0
.end method

.method public static final requestRebind(Landroid/content/ComponentName;)V
    .locals 3
    .param p0, "componentName"    # Landroid/content/ComponentName;

    .line 139
    const-string/jumbo v0, "notification"

    .line 140
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    .line 142
    .local v0, "noMan":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v0, p0}, Landroid/app/INotificationManager;->requestBindProvider(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    nop

    .line 146
    return-void

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public isBound()Z
    .locals 2

    .line 209
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->mProvider:Landroid/service/notification/ConditionProviderService$Provider;

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->TAG:Ljava/lang/String;

    const-string v1, "Condition provider service not yet bound."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x0

    return v0

    .line 213
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final notifyCondition(Landroid/service/notification/Condition;)V
    .locals 2
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .line 178
    if-nez p1, :cond_0

    return-void

    .line 179
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/service/notification/Condition;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/service/notification/ConditionProviderService;->notifyConditions([Landroid/service/notification/Condition;)V

    .line 180
    return-void
.end method

.method public final varargs notifyConditions([Landroid/service/notification/Condition;)V
    .locals 3
    .param p1, "conditions"    # [Landroid/service/notification/Condition;

    .line 188
    invoke-virtual {p0}, Landroid/service/notification/ConditionProviderService;->isBound()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 190
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/service/notification/ConditionProviderService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/service/notification/ConditionProviderService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ConditionProviderService;->mProvider:Landroid/service/notification/ConditionProviderService$Provider;

    invoke-interface {v0, v1, v2, p1}, Landroid/app/INotificationManager;->notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/service/notification/ConditionProviderService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 188
    :cond_1
    :goto_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 198
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->mProvider:Landroid/service/notification/ConditionProviderService$Provider;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Landroid/service/notification/ConditionProviderService$Provider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/notification/ConditionProviderService$Provider;-><init>(Landroid/service/notification/ConditionProviderService;Landroid/service/notification/ConditionProviderService$1;)V

    iput-object v0, p0, Landroid/service/notification/ConditionProviderService;->mProvider:Landroid/service/notification/ConditionProviderService$Provider;

    .line 201
    :cond_0
    iget-object v0, p0, Landroid/service/notification/ConditionProviderService;->mProvider:Landroid/service/notification/ConditionProviderService$Provider;

    return-object v0
.end method

.method public abstract onConnected()V
.end method

.method public onRequestConditions(I)V
    .locals 0
    .param p1, "relevance"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 111
    return-void
.end method

.method public abstract onSubscribe(Landroid/net/Uri;)V
.end method

.method public abstract onUnsubscribe(Landroid/net/Uri;)V
.end method

.method public final requestUnbind()V
    .locals 3

    .line 159
    invoke-direct {p0}, Landroid/service/notification/ConditionProviderService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    .line 161
    .local v0, "noMan":Landroid/app/INotificationManager;
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/ConditionProviderService;->mProvider:Landroid/service/notification/ConditionProviderService$Provider;

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->requestUnbindProvider(Landroid/service/notification/IConditionProvider;)V

    .line 163
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/notification/ConditionProviderService;->mProvider:Landroid/service/notification/ConditionProviderService$Provider;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    nop

    .line 167
    return-void

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
