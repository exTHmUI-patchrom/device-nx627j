.class public abstract Landroid/telephony/CellSignalStrength;
.super Ljava/lang/Object;
.source "CellSignalStrength.java"


# static fields
.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 38
    const-string/jumbo v0, "none"

    const-string/jumbo v1, "poor"

    const-string/jumbo v2, "moderate"

    const-string v3, "good"

    const-string v4, "great"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/CellSignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method public abstract copy()Landroid/telephony/CellSignalStrength;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getAsuLevel()I
.end method

.method public abstract getDbm()I
.end method

.method public abstract getLevel()I
.end method

.method public abstract hashCode()I
.end method

.method public abstract setDefaultValues()V
.end method
