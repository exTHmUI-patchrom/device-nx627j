.class public final synthetic Landroid/mtp/-$$Lambda$MtpStorageManager$QdR1YPNkK9RX4bISfNvQAOnGxGE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Landroid/mtp/-$$Lambda$MtpStorageManager$QdR1YPNkK9RX4bISfNvQAOnGxGE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/mtp/-$$Lambda$MtpStorageManager$QdR1YPNkK9RX4bISfNvQAOnGxGE;

    invoke-direct {v0}, Landroid/mtp/-$$Lambda$MtpStorageManager$QdR1YPNkK9RX4bISfNvQAOnGxGE;-><init>()V

    sput-object v0, Landroid/mtp/-$$Lambda$MtpStorageManager$QdR1YPNkK9RX4bISfNvQAOnGxGE;->INSTANCE:Landroid/mtp/-$$Lambda$MtpStorageManager$QdR1YPNkK9RX4bISfNvQAOnGxGE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/stream/Stream;

    check-cast p2, Ljava/util/stream/Stream;

    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager;->lambda$QdR1YPNkK9RX4bISfNvQAOnGxGE(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method
