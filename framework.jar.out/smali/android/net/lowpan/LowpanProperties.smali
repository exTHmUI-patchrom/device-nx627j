.class public final Landroid/net/lowpan/LowpanProperties;
.super Ljava/lang/Object;
.source "LowpanProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;
    }
.end annotation


# static fields
.field public static final KEY_CHANNEL_MASK:Landroid/net/lowpan/LowpanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/lowpan/LowpanProperty<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final KEY_MAX_TX_POWER:Landroid/net/lowpan/LowpanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/lowpan/LowpanProperty<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;

    const-string v1, "android.net.lowpan.property.CHANNEL_MASK"

    const-class v2, [I

    invoke-direct {v0, v1, v2}, Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/net/lowpan/LowpanProperties;->KEY_CHANNEL_MASK:Landroid/net/lowpan/LowpanProperty;

    .line 25
    new-instance v0, Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;

    const-string v1, "android.net.lowpan.property.MAX_TX_POWER"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/net/lowpan/LowpanProperties$LowpanStandardProperty;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/net/lowpan/LowpanProperties;->KEY_MAX_TX_POWER:Landroid/net/lowpan/LowpanProperty;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
