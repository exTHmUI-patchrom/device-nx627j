.class public final Landroid/print/PageRange;
.super Ljava/lang/Object;
.source "PageRange.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ALL_PAGES:Landroid/print/PageRange;

.field public static final ALL_PAGES_ARRAY:[Landroid/print/PageRange;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/print/PageRange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEnd:I

.field private final mStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Landroid/print/PageRange;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Landroid/print/PageRange;-><init>(II)V

    sput-object v0, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/print/PageRange;

    sget-object v2, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    aput-object v2, v0, v1

    sput-object v0, Landroid/print/PageRange;->ALL_PAGES_ARRAY:[Landroid/print/PageRange;

    .line 165
    new-instance v0, Landroid/print/PageRange$1;

    invoke-direct {v0}, Landroid/print/PageRange$1;-><init>()V

    sput-object v0, Landroid/print/PageRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-ltz p1, :cond_2

    .line 54
    if-ltz p2, :cond_1

    .line 57
    if-gt p1, p2, :cond_0

    .line 60
    iput p1, p0, Landroid/print/PageRange;->mStart:I

    .line 61
    iput p2, p0, Landroid/print/PageRange;->mEnd:I

    .line 62
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start must be lesser than end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end cannot be less than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start cannot be less than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/print/PageRange;-><init>(II)V

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/print/PageRange$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/print/PageRange$1;

    .line 28
    invoke-direct {p0, p1}, Landroid/print/PageRange;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 1
    .param p1, "pageIndex"    # I

    .line 95
    iget v0, p0, Landroid/print/PageRange;->mStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroid/print/PageRange;->mEnd:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 132
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 133
    return v0

    .line 135
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 136
    return v1

    .line 138
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 139
    return v1

    .line 141
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/print/PageRange;

    .line 142
    .local v2, "other":Landroid/print/PageRange;
    iget v3, p0, Landroid/print/PageRange;->mEnd:I

    iget v4, v2, Landroid/print/PageRange;->mEnd:I

    if-eq v3, v4, :cond_3

    .line 143
    return v1

    .line 145
    :cond_3
    iget v3, p0, Landroid/print/PageRange;->mStart:I

    iget v4, v2, Landroid/print/PageRange;->mStart:I

    if-eq v3, v4, :cond_4

    .line 146
    return v1

    .line 148
    :cond_4
    return v0
.end method

.method public getEnd()I
    .locals 1

    .line 83
    iget v0, p0, Landroid/print/PageRange;->mEnd:I

    return v0
.end method

.method public getSize()I
    .locals 2

    .line 107
    iget v0, p0, Landroid/print/PageRange;->mEnd:I

    iget v1, p0, Landroid/print/PageRange;->mStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 74
    iget v0, p0, Landroid/print/PageRange;->mStart:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 123
    const/16 v0, 0x1f

    .line 124
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 125
    .local v1, "result":I
    const/16 v2, 0x1f

    mul-int v3, v2, v1

    iget v4, p0, Landroid/print/PageRange;->mEnd:I

    add-int/2addr v3, v4

    .line 126
    .end local v1    # "result":I
    .local v3, "result":I
    mul-int/2addr v2, v3

    iget v1, p0, Landroid/print/PageRange;->mStart:I

    add-int/2addr v2, v1

    .line 127
    .end local v3    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 153
    iget v0, p0, Landroid/print/PageRange;->mStart:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/print/PageRange;->mEnd:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 154
    const-string v0, "PageRange[<all pages>]"

    return-object v0

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "PageRange["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/print/PageRange;->mStart:I

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/print/PageRange;->mEnd:I

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 117
    iget v0, p0, Landroid/print/PageRange;->mStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Landroid/print/PageRange;->mEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    return-void
.end method
