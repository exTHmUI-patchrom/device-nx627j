.class public final Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator;
.super Ljava/lang/Object;
.source "ParcelableMessageNanoCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/framework/protobuf/nano/MessageNano;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PMNCreator"


# instance fields
.field private final mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator;, "Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator;->mClazz:Ljava/lang/Class;

    .line 51
    return-void
.end method

.method static writeToParcel(Ljava/lang/Class;Lcom/android/framework/protobuf/nano/MessageNano;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "message"    # Lcom/android/framework/protobuf/nano/MessageNano;
    .param p2, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/nano/MessageNano;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/nano/MessageNano;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 94
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    invoke-static {p1}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 96
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator;, "Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator<TT;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 59
    .local v1, "data":[B
    const/4 v2, 0x0

    .line 63
    .local v2, "proto":Lcom/android/framework/protobuf/nano/MessageNano;, "TT;"
    nop

    .line 64
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    const-class v5, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 65
    invoke-virtual {v3, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 66
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 67
    .local v4, "instance":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lcom/android/framework/protobuf/nano/MessageNano;

    move-object v2, v5

    .line 68
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "instance":Ljava/lang/Object;
    goto :goto_0

    .line 79
    :catch_0
    move-exception v3

    .line 80
    .local v3, "e":Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
    const-string v4, "PMNCreator"

    const-string v5, "Exception trying to create proto from parcel"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
    goto :goto_1

    .line 77
    :catch_1
    move-exception v3

    .line 78
    .local v3, "e":Ljava/lang/InstantiationException;
    const-string v4, "PMNCreator"

    const-string v5, "Exception trying to create proto from parcel"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/InstantiationException;
    goto :goto_0

    .line 75
    :catch_2
    move-exception v3

    .line 76
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "PMNCreator"

    const-string v5, "Exception trying to create proto from parcel"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 73
    :catch_3
    move-exception v3

    .line 74
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "PMNCreator"

    const-string v5, "Exception trying to create proto from parcel"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 71
    :catch_4
    move-exception v3

    .line 72
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "PMNCreator"

    const-string v5, "Exception trying to create proto from parcel"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 69
    :catch_5
    move-exception v3

    .line 70
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "PMNCreator"

    const-string v5, "Exception trying to create proto from parcel"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    nop

    .line 83
    :goto_1
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 43
    .local p0, "this":Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator;, "Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator;, "Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator<TT;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator;->mClazz:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/framework/protobuf/nano/MessageNano;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 43
    .local p0, "this":Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator;, "Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator;->newArray(I)[Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object p1

    return-object p1
.end method
