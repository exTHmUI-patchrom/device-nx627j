.class public Landroid/gesture/GestureStore;
.super Ljava/lang/Object;
.source "GestureStore.java"


# static fields
.field private static final FILE_FORMAT_VERSION:S = 0x1s

.field public static final ORIENTATION_INVARIANT:I = 0x1

.field public static final ORIENTATION_SENSITIVE:I = 0x2

.field static final ORIENTATION_SENSITIVE_4:I = 0x4

.field static final ORIENTATION_SENSITIVE_8:I = 0x8

.field private static final PROFILE_LOADING_SAVING:Z = false

.field public static final SEQUENCE_INVARIANT:I = 0x1

.field public static final SEQUENCE_SENSITIVE:I = 0x2


# instance fields
.field private mChanged:Z

.field private mClassifier:Landroid/gesture/Learner;

.field private final mNamedGestures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/Gesture;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOrientationStyle:I

.field private mSequenceType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    .line 80
    iput v0, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/gesture/GestureStore;->mChanged:Z

    .line 90
    new-instance v0, Landroid/gesture/InstanceLearner;

    invoke-direct {v0}, Landroid/gesture/InstanceLearner;-><init>()V

    iput-object v0, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    .line 91
    return-void
.end method

.method private readFormatV1(Ljava/io/DataInputStream;)V
    .locals 12
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    .line 308
    .local v0, "classifier":Landroid/gesture/Learner;
    iget-object v1, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    .line 309
    .local v1, "namedGestures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/gesture/Gesture;>;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 312
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 314
    .local v2, "entriesCount":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 316
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 318
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 320
    .local v6, "gestureCount":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 321
    .local v7, "gestures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    move v8, v3

    .local v8, "j":I
    :goto_1
    if-ge v8, v6, :cond_0

    .line 322
    invoke-static {p1}, Landroid/gesture/Gesture;->deserialize(Ljava/io/DataInputStream;)Landroid/gesture/Gesture;

    move-result-object v9

    .line 323
    .local v9, "gesture":Landroid/gesture/Gesture;
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    iget v10, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    iget v11, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    .line 325
    invoke-static {v10, v11, v9, v5}, Landroid/gesture/Instance;->createInstance(IILandroid/gesture/Gesture;Ljava/lang/String;)Landroid/gesture/Instance;

    move-result-object v10

    .line 324
    invoke-virtual {v0, v10}, Landroid/gesture/Learner;->addInstance(Landroid/gesture/Instance;)V

    .line 321
    .end local v9    # "gesture":Landroid/gesture/Gesture;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 328
    .end local v8    # "j":I
    :cond_0
    invoke-virtual {v1, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "gestureCount":I
    .end local v7    # "gestures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 330
    .end local v4    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public addGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V
    .locals 4
    .param p1, "entryName"    # Ljava/lang/String;
    .param p2, "gesture"    # Landroid/gesture/Gesture;

    .line 149
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 153
    .local v0, "gestures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    if-nez v0, :cond_1

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 155
    iget-object v1, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v1, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    iget v2, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    iget v3, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    .line 159
    invoke-static {v2, v3, p2, p1}, Landroid/gesture/Instance;->createInstance(IILandroid/gesture/Gesture;Ljava/lang/String;)Landroid/gesture/Instance;

    move-result-object v2

    .line 158
    invoke-virtual {v1, v2}, Landroid/gesture/Learner;->addInstance(Landroid/gesture/Instance;)V

    .line 160
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/gesture/GestureStore;->mChanged:Z

    .line 161
    return-void

    .line 150
    .end local v0    # "gestures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    :cond_2
    :goto_0
    return-void
.end method

.method public getGestureEntries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getGestures(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "entryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/Gesture;",
            ">;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 207
    .local v0, "gestures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    if-eqz v0, :cond_0

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 210
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getLearner()Landroid/gesture/Learner;
    .locals 1

    .line 333
    iget-object v0, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    return-object v0
.end method

.method public getOrientationStyle()I
    .locals 1

    .line 104
    iget v0, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    return v0
.end method

.method public getSequenceType()I
    .locals 1

    .line 118
    iget v0, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    return v0
.end method

.method public hasChanged()Z
    .locals 1

    .line 215
    iget-boolean v0, p0, Landroid/gesture/GestureStore;->mChanged:Z

    return v0
.end method

.method public load(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/gesture/GestureStore;->load(Ljava/io/InputStream;Z)V

    .line 276
    return-void
.end method

.method public load(Ljava/io/InputStream;Z)V
    .locals 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "closeStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    const/4 v0, 0x0

    .line 281
    .local v0, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    instance-of v2, p1, Ljava/io/BufferedInputStream;

    if-eqz v2, :cond_0

    .line 282
    move-object v2, p1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/BufferedInputStream;

    const v3, 0x8000

    invoke-direct {v2, p1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    :goto_0
    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 290
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    .line 291
    .local v1, "versionNumber":S
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .end local v1    # "versionNumber":S
    goto :goto_1

    .line 293
    .restart local v1    # "versionNumber":S
    :cond_1
    invoke-direct {p0, v0}, Landroid/gesture/GestureStore;->readFormatV1(Ljava/io/DataInputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    .end local v1    # "versionNumber":S
    :goto_1
    if-eqz p2, :cond_2

    invoke-static {v0}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    .line 304
    :cond_2
    return-void

    .line 302
    :catchall_0
    move-exception v1

    if-eqz p2, :cond_3

    invoke-static {v0}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    :cond_3
    throw v1
.end method

.method public recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "gesture"    # Landroid/gesture/Gesture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/gesture/Gesture;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/Prediction;",
            ">;"
        }
    .end annotation

    .line 137
    iget v0, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    iget v1, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/gesture/Instance;->createInstance(IILandroid/gesture/Gesture;Ljava/lang/String;)Landroid/gesture/Instance;

    move-result-object v0

    .line 139
    .local v0, "instance":Landroid/gesture/Instance;
    iget-object v1, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    iget v2, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    iget v3, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    iget-object v4, v0, Landroid/gesture/Instance;->vector:[F

    invoke-virtual {v1, v2, v3, v4}, Landroid/gesture/Learner;->classify(II[F)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public removeEntry(Ljava/lang/String;)V
    .locals 1
    .param p1, "entryName"    # Ljava/lang/String;

    .line 194
    iget-object v0, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    invoke-virtual {v0, p1}, Landroid/gesture/Learner;->removeInstances(Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/gesture/GestureStore;->mChanged:Z

    .line 197
    return-void
.end method

.method public removeGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V
    .locals 4
    .param p1, "entryName"    # Ljava/lang/String;
    .param p2, "gesture"    # Landroid/gesture/Gesture;

    .line 171
    iget-object v0, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 172
    .local v0, "gestures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    if-nez v0, :cond_0

    .line 173
    return-void

    .line 176
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_1
    iget-object v1, p0, Landroid/gesture/GestureStore;->mClassifier:Landroid/gesture/Learner;

    invoke-virtual {p2}, Landroid/gesture/Gesture;->getID()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/gesture/Learner;->removeInstance(J)V

    .line 185
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/gesture/GestureStore;->mChanged:Z

    .line 186
    return-void
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/gesture/GestureStore;->save(Ljava/io/OutputStream;Z)V

    .line 223
    return-void
.end method

.method public save(Ljava/io/OutputStream;Z)V
    .locals 9
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "closeStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    const/4 v0, 0x0

    .line 234
    .local v0, "out":Ljava/io/DataOutputStream;
    :try_start_0
    iget-object v1, p0, Landroid/gesture/GestureStore;->mNamedGestures:Ljava/util/HashMap;

    .line 236
    .local v1, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/gesture/Gesture;>;>;"
    new-instance v2, Ljava/io/DataOutputStream;

    instance-of v3, p1, Ljava/io/BufferedOutputStream;

    if-eqz v3, :cond_0

    .line 237
    move-object v3, p1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    const v4, 0x8000

    invoke-direct {v3, p1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :goto_0
    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v2

    .line 239
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 241
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 243
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 244
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Landroid/gesture/Gesture;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 245
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 246
    .local v6, "examples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 249
    .local v7, "count":I
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 253
    nop

    .local v4, "i":I
    :goto_2
    if-ge v4, v7, :cond_1

    .line 254
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/gesture/Gesture;

    invoke-virtual {v8, v0}, Landroid/gesture/Gesture;->serialize(Ljava/io/DataOutputStream;)V

    .line 253
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 256
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Landroid/gesture/Gesture;>;>;"
    .end local v4    # "i":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "examples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    .end local v7    # "count":I
    :cond_1
    goto :goto_1

    .line 258
    :cond_2
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 265
    iput-boolean v4, p0, Landroid/gesture/GestureStore;->mChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    .end local v1    # "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/gesture/Gesture;>;>;"
    if-eqz p2, :cond_3

    invoke-static {v0}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    .line 269
    :cond_3
    return-void

    .line 267
    :catchall_0
    move-exception v1

    if-eqz p2, :cond_4

    invoke-static {v0}, Landroid/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    :cond_4
    throw v1
.end method

.method public setOrientationStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .line 100
    iput p1, p0, Landroid/gesture/GestureStore;->mOrientationStyle:I

    .line 101
    return-void
.end method

.method public setSequenceType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 111
    iput p1, p0, Landroid/gesture/GestureStore;->mSequenceType:I

    .line 112
    return-void
.end method
