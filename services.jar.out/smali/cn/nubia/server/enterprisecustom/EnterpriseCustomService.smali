.class public final Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;
.super Lcn/nubia/server/NubiaSystemService;
.source "EnterpriseCustomService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/enterprisecustom/EnterpriseCustomService$BinderService;
    }
.end annotation


# static fields
.field private static final CUSTOM_PACKAGE_DATA_APPS:Ljava/lang/String;

.field private static final DEBUG:Z

.field private static final SERVICE_NAME:Ljava/lang/String; = "nubia.enterprisecustom"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    const-class v0, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;->TAG:Ljava/lang/String;

    .line 35
    sget-object v0, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;->DEBUG:Z

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/custompackage/apps.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;->CUSTOM_PACKAGE_DATA_APPS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Lcn/nubia/server/NubiaSystemService;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;->CUSTOM_PACKAGE_DATA_APPS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;

    .line 33
    iget-object v0, p0, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private init()V
    .locals 2

    .line 64
    const-string v0, "EnterPriseCustompackage"

    const-string/jumbo v1, "init()!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method


# virtual methods
.method public getServiceBinder()Landroid/os/IBinder;
    .locals 2

    .line 59
    new-instance v0, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService$BinderService;-><init>(Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;Lcn/nubia/server/enterprisecustom/EnterpriseCustomService$1;)V

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 47
    const-string/jumbo v0, "nubia.enterprisecustom"

    return-object v0
.end method

.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 52
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;->init()V

    .line 55
    :cond_0
    return-void
.end method
