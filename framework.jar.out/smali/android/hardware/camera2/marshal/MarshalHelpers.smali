.class public final Landroid/hardware/camera2/marshal/MarshalHelpers;
.super Ljava/lang/Object;
.source "MarshalHelpers.java"


# static fields
.field public static final SIZEOF_BYTE:I = 0x1

.field public static final SIZEOF_DOUBLE:I = 0x8

.field public static final SIZEOF_FLOAT:I = 0x4

.field public static final SIZEOF_INT32:I = 0x4

.field public static final SIZEOF_INT64:I = 0x8

.field public static final SIZEOF_RATIONAL:I = 0x8


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static checkNativeType(I)I
    .locals 3
    .param p0, "nativeType"    # I

    .line 208
    packed-switch p0, :pswitch_data_0

    .line 218
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown nativeType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :pswitch_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static checkNativeTypeEquals(II)I
    .locals 4
    .param p0, "expectedNativeType"    # I
    .param p1, "actualNativeType"    # I

    .line 231
    if-ne p0, p1, :cond_0

    .line 237
    return p1

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 234
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 233
    const-string v2, "Expected native type %d, but got %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkPrimitiveClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 87
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string/jumbo v0, "klass must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {p0}, Landroid/hardware/camera2/marshal/MarshalHelpers;->isPrimitiveClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    return-object p0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'; expected a metadata primitive class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPrimitiveTypeSize(I)I
    .locals 3
    .param p0, "nativeType"    # I

    .line 55
    const/4 v0, 0x4

    const/16 v1, 0x8

    packed-switch p0, :pswitch_data_0

    .line 70
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type, can\'t get size for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :pswitch_0
    return v1

    .line 65
    :pswitch_1
    return v1

    .line 63
    :pswitch_2
    return v1

    .line 61
    :pswitch_3
    return v0

    .line 59
    :pswitch_4
    return v0

    .line 57
    :pswitch_5
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isPrimitiveClass(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 118
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 119
    return v0

    .line 122
    :cond_0
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    if-eq p0, v1, :cond_b

    const-class v1, Ljava/lang/Byte;

    if-ne p0, v1, :cond_1

    goto :goto_4

    .line 124
    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_a

    const-class v1, Ljava/lang/Integer;

    if-ne p0, v1, :cond_2

    goto :goto_3

    .line 126
    :cond_2
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_9

    const-class v1, Ljava/lang/Float;

    if-ne p0, v1, :cond_3

    goto :goto_2

    .line 128
    :cond_3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_8

    const-class v1, Ljava/lang/Long;

    if-ne p0, v1, :cond_4

    goto :goto_1

    .line 130
    :cond_4
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_7

    const-class v1, Ljava/lang/Double;

    if-ne p0, v1, :cond_5

    goto :goto_0

    .line 132
    :cond_5
    const-class v1, Landroid/util/Rational;

    if-ne p0, v1, :cond_6

    .line 133
    return v2

    .line 136
    :cond_6
    return v0

    .line 131
    :cond_7
    :goto_0
    return v2

    .line 129
    :cond_8
    :goto_1
    return v2

    .line 127
    :cond_9
    :goto_2
    return v2

    .line 125
    :cond_a
    :goto_3
    return v2

    .line 123
    :cond_b
    :goto_4
    return v2
.end method

.method public static toStringNativeType(I)Ljava/lang/String;
    .locals 2
    .param p0, "nativeType"    # I

    .line 179
    packed-switch p0, :pswitch_data_0

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 191
    :pswitch_0
    const-string v0, "TYPE_RATIONAL"

    return-object v0

    .line 189
    :pswitch_1
    const-string v0, "TYPE_DOUBLE"

    return-object v0

    .line 187
    :pswitch_2
    const-string v0, "TYPE_INT64"

    return-object v0

    .line 185
    :pswitch_3
    const-string v0, "TYPE_FLOAT"

    return-object v0

    .line 183
    :pswitch_4
    const-string v0, "TYPE_INT32"

    return-object v0

    .line 181
    :pswitch_5
    const-string v0, "TYPE_BYTE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static wrapClassIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 154
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 155
    const-class v0, Ljava/lang/Byte;

    return-object v0

    .line 156
    :cond_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 157
    const-class v0, Ljava/lang/Integer;

    return-object v0

    .line 158
    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 159
    const-class v0, Ljava/lang/Float;

    return-object v0

    .line 160
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 161
    const-class v0, Ljava/lang/Long;

    return-object v0

    .line 162
    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 163
    const-class v0, Ljava/lang/Double;

    return-object v0

    .line 166
    :cond_4
    return-object p0
.end method
