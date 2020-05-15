.class public Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundModelEvent"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final data:[B

.field public final soundModelHandle:I

.field public final status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1314
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(II[B)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "soundModelHandle"    # I
    .param p3, "data"    # [B

    .line 1308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1309
    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->status:I

    .line 1310
    iput p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->soundModelHandle:I

    .line 1311
    iput-object p3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->data:[B

    .line 1312
    return-void
.end method

.method static synthetic access$900(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;
    .locals 1
    .param p0, "x0"    # Landroid/os/Parcel;

    .line 1300
    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    move-result-object v0

    return-object v0
.end method

.method private static fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;
    .locals 4
    .param p0, "in"    # Landroid/os/Parcel;

    .line 1326
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1327
    .local v0, "status":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1328
    .local v1, "soundModelHandle":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v2

    .line 1329
    .local v2, "data":[B
    new-instance v3, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    invoke-direct {v3, v0, v1, v2}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;-><init>(II[B)V

    return-object v3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1334
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1356
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1357
    return v0

    .line 1358
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1359
    return v1

    .line 1360
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 1361
    return v1

    .line 1362
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    .line 1363
    .local v2, "other":Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->data:[B

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->data:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1364
    return v1

    .line 1365
    :cond_3
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->soundModelHandle:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->soundModelHandle:I

    if-eq v3, v4, :cond_4

    .line 1366
    return v1

    .line 1367
    :cond_4
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->status:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->status:I

    if-eq v3, v4, :cond_5

    .line 1368
    return v1

    .line 1369
    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 1346
    const/16 v0, 0x1f

    .line 1347
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 1348
    .local v1, "result":I
    const/16 v2, 0x1f

    mul-int v3, v2, v1

    iget-object v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->data:[B

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    add-int/2addr v3, v4

    .line 1349
    .end local v1    # "result":I
    .local v3, "result":I
    mul-int v1, v2, v3

    iget v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->soundModelHandle:I

    add-int/2addr v1, v4

    .line 1350
    .end local v3    # "result":I
    .restart local v1    # "result":I
    mul-int/2addr v2, v1

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->status:I

    add-int/2addr v2, v3

    .line 1351
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoundModelEvent [status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", soundModelHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->soundModelHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->data:[B

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->data:[B

    array-length v1, v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1374
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1339
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1340
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->soundModelHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1341
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    .line 1342
    return-void
.end method
