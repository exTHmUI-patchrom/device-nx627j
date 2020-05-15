.class public final synthetic Landroid/webkit/-$$Lambda$xYTrYQCPf1HcdlWzDof3mq93ihs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Landroid/webkit/-$$Lambda$xYTrYQCPf1HcdlWzDof3mq93ihs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/webkit/-$$Lambda$xYTrYQCPf1HcdlWzDof3mq93ihs;

    invoke-direct {v0}, Landroid/webkit/-$$Lambda$xYTrYQCPf1HcdlWzDof3mq93ihs;-><init>()V

    sput-object v0, Landroid/webkit/-$$Lambda$xYTrYQCPf1HcdlWzDof3mq93ihs;->INSTANCE:Landroid/webkit/-$$Lambda$xYTrYQCPf1HcdlWzDof3mq93ihs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Landroid/webkit/WebViewZygote;->getProcess()Landroid/os/ZygoteProcess;

    return-void
.end method
