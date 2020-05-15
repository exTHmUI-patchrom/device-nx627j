.class public Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
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
    name = "Keyphrase"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final id:I

.field public final locale:Ljava/lang/String;

.field public final recognitionModes:I

.field public final text:Ljava/lang/String;

.field public final users:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 315
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "recognitionModes"    # I
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "users"    # [I

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    .line 309
    iput p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->recognitionModes:I

    .line 310
    iput-object p3, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    .line 311
    iput-object p4, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    .line 312
    iput-object p5, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    .line 313
    return-void
.end method

.method static synthetic access$100(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    .locals 1
    .param p0, "x0"    # Landroid/os/Parcel;

    .line 290
    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v0

    return-object v0
.end method

.method private static fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    .locals 13
    .param p0, "in"    # Landroid/os/Parcel;

    .line 327
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 328
    .local v6, "id":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 329
    .local v7, "recognitionModes":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 330
    .local v8, "locale":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 331
    .local v9, "text":Ljava/lang/String;
    const/4 v0, 0x0

    .line 332
    .local v0, "users":[I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 333
    .local v10, "numUsers":I
    if-ltz v10, :cond_0

    .line 334
    new-array v0, v10, [I

    .line 335
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 337
    .end local v0    # "users":[I
    .local v11, "users":[I
    :cond_0
    move-object v11, v0

    new-instance v12, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-object v0, v12

    move v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;-><init>(IILjava/lang/String;Ljava/lang/String;[I)V

    return-object v12
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 373
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 374
    return v0

    .line 375
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 376
    return v1

    .line 377
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 378
    return v1

    .line 379
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 380
    .local v2, "other":Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 381
    iget-object v3, v2, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 382
    return v1

    .line 383
    :cond_3
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 384
    return v1

    .line 385
    :cond_4
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    if-eq v3, v4, :cond_5

    .line 386
    return v1

    .line 387
    :cond_5
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 388
    iget-object v3, v2, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 389
    return v1

    .line 390
    :cond_6
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 391
    return v1

    .line 392
    :cond_7
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->recognitionModes:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->recognitionModes:I

    if-eq v3, v4, :cond_8

    .line 393
    return v1

    .line 394
    :cond_8
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 395
    return v1

    .line 396
    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 361
    const/16 v0, 0x1f

    .line 362
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 363
    .local v1, "result":I
    const/16 v2, 0x1f

    mul-int v3, v2, v1

    iget-object v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_0
    add-int/2addr v3, v4

    .line 364
    .end local v1    # "result":I
    .local v3, "result":I
    mul-int v1, v2, v3

    iget v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    add-int/2addr v1, v4

    .line 365
    .end local v3    # "result":I
    .restart local v1    # "result":I
    mul-int v3, v2, v1

    iget-object v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    :goto_1
    add-int/2addr v3, v5

    .line 366
    .end local v1    # "result":I
    .restart local v3    # "result":I
    mul-int v1, v2, v3

    iget v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->recognitionModes:I

    add-int/2addr v1, v4

    .line 367
    .end local v3    # "result":I
    .restart local v1    # "result":I
    mul-int/2addr v2, v1

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    add-int/2addr v2, v3

    .line 368
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keyphrase [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recognitionModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->recognitionModes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", users="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    .line 402
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 342
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->recognitionModes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 350
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    :goto_0
    return-void
.end method
