.class public Landroid/graphics/Point;
.super Ljava/lang/Object;
.source "Point.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 140
    new-instance v0, Landroid/graphics/Point$1;

    invoke-direct {v0}, Landroid/graphics/Point$1;-><init>()V

    sput-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Landroid/graphics/Point;->x:I

    .line 37
    iput p2, p0, Landroid/graphics/Point;->y:I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "src"    # Landroid/graphics/Point;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Landroid/graphics/Point;->x:I

    .line 42
    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 43
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 73
    iget v0, p0, Landroid/graphics/Point;->x:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/graphics/Point;->y:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 78
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 79
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/graphics/Point;

    .line 83
    .local v2, "point":Landroid/graphics/Point;
    iget v3, p0, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->x:I

    if-eq v3, v4, :cond_2

    return v1

    .line 84
    :cond_2
    iget v3, p0, Landroid/graphics/Point;->y:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    if-eq v3, v4, :cond_3

    return v1

    .line 86
    :cond_3
    return v0

    .line 79
    .end local v2    # "point":Landroid/graphics/Point;
    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 91
    iget v0, p0, Landroid/graphics/Point;->x:I

    .line 92
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v2

    .line 93
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public final negate()V
    .locals 1

    .line 57
    iget v0, p0, Landroid/graphics/Point;->x:I

    neg-int v0, v0

    iput v0, p0, Landroid/graphics/Point;->x:I

    .line 58
    iget v0, p0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 59
    return-void
.end method

.method public final offset(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 65
    iget v0, p0, Landroid/graphics/Point;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Point;->x:I

    .line 66
    iget v0, p0, Landroid/graphics/Point;->y:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 67
    return-void
.end method

.method public printShortString(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 103
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/Point;->x:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 167
    return-void
.end method

.method public set(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 49
    iput p1, p0, Landroid/graphics/Point;->x:I

    .line 50
    iput p2, p0, Landroid/graphics/Point;->y:I

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Point("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 121
    iget v0, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget v0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 134
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 135
    .local v0, "token":J
    iget v2, p0, Landroid/graphics/Point;->x:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 136
    iget v2, p0, Landroid/graphics/Point;->y:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 137
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 138
    return-void
.end method
