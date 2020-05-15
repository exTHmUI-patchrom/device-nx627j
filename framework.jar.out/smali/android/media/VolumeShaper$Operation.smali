.class public final Landroid/media/VolumeShaper$Operation;
.super Ljava/lang/Object;
.source "VolumeShaper.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeShaper$Operation$Builder;,
        Landroid/media/VolumeShaper$Operation$Flag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/VolumeShaper$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_CREATE_IF_NEEDED:I = 0x10

.field private static final FLAG_DEFER:I = 0x8

.field private static final FLAG_JOIN:I = 0x4

.field private static final FLAG_NONE:I = 0x0

.field private static final FLAG_PUBLIC_ALL:I = 0x3

.field private static final FLAG_REVERSE:I = 0x1

.field private static final FLAG_TERMINATE:I = 0x2

.field public static final PLAY:Landroid/media/VolumeShaper$Operation;

.field public static final REVERSE:Landroid/media/VolumeShaper$Operation;


# instance fields
.field private final mFlags:I

.field private final mReplaceId:I

.field private final mXOffset:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1056
    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Operation$Builder;-><init>()V

    .line 1058
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    sput-object v0, Landroid/media/VolumeShaper$Operation;->PLAY:Landroid/media/VolumeShaper$Operation;

    .line 1065
    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Operation$Builder;-><init>()V

    .line 1067
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->reverse()Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object v0

    .line 1068
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    sput-object v0, Landroid/media/VolumeShaper$Operation;->REVERSE:Landroid/media/VolumeShaper$Operation;

    .line 1169
    new-instance v0, Landroid/media/VolumeShaper$Operation$1;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Operation$1;-><init>()V

    sput-object v0, Landroid/media/VolumeShaper$Operation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIF)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "replaceId"    # I
    .param p3, "xOffset"    # F

    .line 1190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1191
    iput p1, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    .line 1192
    iput p2, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    .line 1193
    iput p3, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    .line 1194
    return-void
.end method

.method synthetic constructor <init>(IIFLandroid/media/VolumeShaper$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # F
    .param p4, "x3"    # Landroid/media/VolumeShaper$1;

    .line 1050
    invoke-direct {p0, p1, p2, p3}, Landroid/media/VolumeShaper$Operation;-><init>(IIF)V

    return-void
.end method

.method static synthetic access$500(Landroid/media/VolumeShaper$Operation;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/VolumeShaper$Operation;

    .line 1050
    iget v0, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    return v0
.end method

.method static synthetic access$600(Landroid/media/VolumeShaper$Operation;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/VolumeShaper$Operation;

    .line 1050
    iget v0, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    return v0
.end method

.method static synthetic access$700(Landroid/media/VolumeShaper$Operation;)F
    .locals 1
    .param p0, "x0"    # Landroid/media/VolumeShaper$Operation;

    .line 1050
    iget v0, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1158
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1147
    instance-of v0, p1, Landroid/media/VolumeShaper$Operation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1148
    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 1149
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/VolumeShaper$Operation;

    .line 1151
    .local v2, "other":Landroid/media/VolumeShaper$Operation;
    iget v3, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    iget v4, v2, Landroid/media/VolumeShaper$Operation;->mFlags:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    iget v4, v2, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    iget v4, v2, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    .line 1153
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 1151
    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1142
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumeShaper.Operation{mFlags = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    .line 1134
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReplaceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mXOffset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1133
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1164
    iget v0, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1165
    iget v0, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1166
    iget v0, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1167
    return-void
.end method
