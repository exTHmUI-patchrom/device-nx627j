.class Landroid/gesture/GestureLibraries$ResourceGestureLibrary;
.super Landroid/gesture/GestureLibrary;
.source "GestureLibraries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gesture/GestureLibraries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceGestureLibrary"
.end annotation


# instance fields
.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .line 113
    invoke-direct {p0}, Landroid/gesture/GestureLibrary;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;->mContext:Ljava/lang/ref/WeakReference;

    .line 115
    iput p2, p0, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;->mResourceId:I

    .line 116
    return-void
.end method


# virtual methods
.method public isReadOnly()Z
    .locals 1

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public load()Z
    .locals 8

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "result":Z
    iget-object v1, p0, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 130
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;->mResourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 133
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;->mStore:Landroid/gesture/GestureStore;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/gesture/GestureStore;->load(Ljava/io/InputStream;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    const/4 v0, 0x1

    .line 138
    goto :goto_0

    .line 135
    :catch_0
    move-exception v3

    .line 136
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "Gestures"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not load the gesture library from raw resource "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;->mResourceId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 136
    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return v0
.end method

.method public save()Z
    .locals 1

    .line 124
    const/4 v0, 0x0

    return v0
.end method
