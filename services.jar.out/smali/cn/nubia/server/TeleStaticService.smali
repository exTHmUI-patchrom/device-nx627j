.class public Lcn/nubia/server/TeleStaticService;
.super Lcn/nubia/server/NubiaSystemService;
.source "TeleStaticService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TeleStaticService"

.field private static final TEL_STATIC_AIDL:Ljava/lang/String; = "itei"


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private mSystemReadyMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0, p1}, Lcn/nubia/server/NubiaSystemService;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/TeleStaticService;->mContext:Landroid/content/Context;

    .line 23
    iput-object p1, p0, Lcn/nubia/server/TeleStaticService;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private initTeleStatic()V
    .locals 5

    .line 54
    :try_start_0
    const-string v0, "cn.nubia.telestatic.service.NBTeleStaticOuter"

    .line 55
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 56
    .local v0, "wbcClass":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 57
    const-string v1, "TeleStaticService"

    const-string/jumbo v2, "wbcClass is not null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string/jumbo v1, "systemReady"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/TeleStaticService;->mSystemReadyMethod:Ljava/lang/reflect/Method;

    .line 59
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v2

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 61
    .local v3, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcn/nubia/server/TeleStaticService;->mContext:Landroid/content/Context;

    aput-object v4, v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 62
    .local v1, "wbcObject":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Landroid/os/IBinder;

    iput-object v2, p0, Lcn/nubia/server/TeleStaticService;->mBinder:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "wbcClass":Ljava/lang/Class;
    .end local v1    # "wbcObject":Ljava/lang/Object;
    .end local v3    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    :cond_0
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TeleStaticService"

    const-string/jumbo v2, "initTeleStatic_error= "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public getServiceBinder()Landroid/os/IBinder;
    .locals 1

    .line 31
    iget-object v0, p0, Lcn/nubia/server/TeleStaticService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 27
    const-string/jumbo v0, "itei"

    return-object v0
.end method

.method public onStart()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcn/nubia/server/TeleStaticService;->initTeleStatic()V

    .line 49
    invoke-super {p0}, Lcn/nubia/server/NubiaSystemService;->onStart()V

    .line 50
    return-void
.end method

.method public systemReady()V
    .locals 3

    .line 36
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/TeleStaticService;->mSystemReadyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcn/nubia/server/TeleStaticService;->mSystemReadyMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcn/nubia/server/TeleStaticService;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 39
    :cond_0
    const-string v0, "TeleStaticService"

    const-string/jumbo v1, "mSystemReadyMethod is null!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    goto :goto_1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "ignored":Ljava/lang/ReflectiveOperationException;
    const-string v1, "TeleStaticService"

    const-string/jumbo v2, "systemReady_ignored = "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .end local v0    # "ignored":Ljava/lang/ReflectiveOperationException;
    :goto_1
    return-void
.end method
