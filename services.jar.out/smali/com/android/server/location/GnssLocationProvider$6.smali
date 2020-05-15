.class Lcom/android/server/location/GnssLocationProvider$6;
.super Ljava/util/HashMap;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/android/server/location/GnssLocationProvider$SetCarrierProperty;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 698
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$6;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 700
    const-string v0, "SUPL_VER"

    sget-object v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$d34_RfOwt4eW2WTSkMsS8UoXSqY;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$d34_RfOwt4eW2WTSkMsS8UoXSqY;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    const-string v0, "SUPL_MODE"

    sget-object v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$7ITcPSS3RLwdJLvqPT1qDZbuYgU;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$7ITcPSS3RLwdJLvqPT1qDZbuYgU;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    const-string v0, "SUPL_ES"

    sget-object v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$pJxRP_yDkUU0yl--Fw431I8fN70;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$pJxRP_yDkUU0yl--Fw431I8fN70;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    const-string v0, "LPP_PROFILE"

    sget-object v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$vt8zMIL_RIFwKcgd1rz4Y33NVyk;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$vt8zMIL_RIFwKcgd1rz4Y33NVyk;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    const-string v0, "A_GLONASS_POS_PROTOCOL_SELECT"

    sget-object v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$fIEuYdSEFZVtEQQ5H4O-bTmj-LE;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$fIEuYdSEFZVtEQQ5H4O-bTmj-LE;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    const-string v0, "USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL"

    sget-object v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$M4Zfb6dp_EFsOdGGju4tOPs-lc4;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$M4Zfb6dp_EFsOdGGju4tOPs-lc4;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    const-string v0, "GPS_LOCK"

    sget-object v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$0TBIDASC8cGFJxhCk2blveu19LI;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssLocationProvider$6$0TBIDASC8cGFJxhCk2blveu19LI;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    return-void
.end method

.method static synthetic lambda$new$0(I)Z
    .locals 1
    .param p0, "val"    # I

    .line 700
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->access$2000(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$1(I)Z
    .locals 1
    .param p0, "val"    # I

    .line 701
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->access$1900(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$2(I)Z
    .locals 1
    .param p0, "val"    # I

    .line 702
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->access$1800(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$3(I)Z
    .locals 1
    .param p0, "val"    # I

    .line 703
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->access$1700(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$4(I)Z
    .locals 1
    .param p0, "val"    # I

    .line 705
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->access$1600(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$5(I)Z
    .locals 1
    .param p0, "val"    # I

    .line 707
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->access$1500(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$6(I)Z
    .locals 1
    .param p0, "val"    # I

    .line 708
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->access$1400(I)Z

    move-result v0

    return v0
.end method
