.class public final synthetic Landroid/mtp/-$$Lambda$iwOv5HKUnGm7PVU3weoI9-JmsXc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Landroid/mtp/-$$Lambda$iwOv5HKUnGm7PVU3weoI9-JmsXc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/mtp/-$$Lambda$iwOv5HKUnGm7PVU3weoI9-JmsXc;

    invoke-direct {v0}, Landroid/mtp/-$$Lambda$iwOv5HKUnGm7PVU3weoI9-JmsXc;-><init>()V

    sput-object v0, Landroid/mtp/-$$Lambda$iwOv5HKUnGm7PVU3weoI9-JmsXc;->INSTANCE:Landroid/mtp/-$$Lambda$iwOv5HKUnGm7PVU3weoI9-JmsXc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result p1

    return p1
.end method
