.class public final synthetic Landroid/mtp/-$$Lambda$72U6ffwsZ0Sm2BXYilXSg7hTsO8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/mtp/-$$Lambda$72U6ffwsZ0Sm2BXYilXSg7hTsO8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/mtp/-$$Lambda$72U6ffwsZ0Sm2BXYilXSg7hTsO8;

    invoke-direct {v0}, Landroid/mtp/-$$Lambda$72U6ffwsZ0Sm2BXYilXSg7hTsO8;-><init>()V

    sput-object v0, Landroid/mtp/-$$Lambda$72U6ffwsZ0Sm2BXYilXSg7hTsO8;->INSTANCE:Landroid/mtp/-$$Lambda$72U6ffwsZ0Sm2BXYilXSg7hTsO8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method
