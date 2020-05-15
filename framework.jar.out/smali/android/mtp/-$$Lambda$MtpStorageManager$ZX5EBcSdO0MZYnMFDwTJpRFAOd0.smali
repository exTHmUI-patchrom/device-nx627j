.class public final synthetic Landroid/mtp/-$$Lambda$MtpStorageManager$ZX5EBcSdO0MZYnMFDwTJpRFAOd0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Landroid/mtp/-$$Lambda$MtpStorageManager$ZX5EBcSdO0MZYnMFDwTJpRFAOd0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/mtp/-$$Lambda$MtpStorageManager$ZX5EBcSdO0MZYnMFDwTJpRFAOd0;

    invoke-direct {v0}, Landroid/mtp/-$$Lambda$MtpStorageManager$ZX5EBcSdO0MZYnMFDwTJpRFAOd0;-><init>()V

    sput-object v0, Landroid/mtp/-$$Lambda$MtpStorageManager$ZX5EBcSdO0MZYnMFDwTJpRFAOd0;->INSTANCE:Landroid/mtp/-$$Lambda$MtpStorageManager$ZX5EBcSdO0MZYnMFDwTJpRFAOd0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/mtp/MtpStorageManager;->lambda$ZX5EBcSdO0MZYnMFDwTJpRFAOd0(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
