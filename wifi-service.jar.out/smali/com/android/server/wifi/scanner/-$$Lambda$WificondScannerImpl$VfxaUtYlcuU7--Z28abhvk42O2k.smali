.class public final synthetic Lcom/android/server/wifi/scanner/-$$Lambda$WificondScannerImpl$VfxaUtYlcuU7--Z28abhvk42O2k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wifi/scanner/-$$Lambda$WificondScannerImpl$VfxaUtYlcuU7--Z28abhvk42O2k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wifi/scanner/-$$Lambda$WificondScannerImpl$VfxaUtYlcuU7--Z28abhvk42O2k;

    invoke-direct {v0}, Lcom/android/server/wifi/scanner/-$$Lambda$WificondScannerImpl$VfxaUtYlcuU7--Z28abhvk42O2k;-><init>()V

    sput-object v0, Lcom/android/server/wifi/scanner/-$$Lambda$WificondScannerImpl$VfxaUtYlcuU7--Z28abhvk42O2k;->INSTANCE:Lcom/android/server/wifi/scanner/-$$Lambda$WificondScannerImpl$VfxaUtYlcuU7--Z28abhvk42O2k;

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

    check-cast p1, Lcom/android/server/wifi/ScanDetail;

    invoke-static {p1}, Lcom/android/server/wifi/scanner/WificondScannerImpl;->lambda$dump$1(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/ScanResult;

    move-result-object p1

    return-object p1
.end method
