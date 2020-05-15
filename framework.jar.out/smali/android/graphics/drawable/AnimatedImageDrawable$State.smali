.class Landroid/graphics/drawable/AnimatedImageDrawable$State;
.super Ljava/lang/Object;
.source "AnimatedImageDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedImageDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "State"
.end annotation


# instance fields
.field private final mAssetFd:Landroid/content/res/AssetFileDescriptor;

.field mAutoMirrored:Z

.field private final mInputStream:Ljava/io/InputStream;

.field final mNativePtr:J

.field mRepeatCount:I

.field mThemeAttrs:[I

.field final synthetic this$0:Landroid/graphics/drawable/AnimatedImageDrawable;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimatedImageDrawable;JLjava/io/InputStream;Landroid/content/res/AssetFileDescriptor;)V
    .locals 0
    .param p2, "nativePtr"    # J
    .param p4, "is"    # Ljava/io/InputStream;
    .param p5, "afd"    # Landroid/content/res/AssetFileDescriptor;

    .line 80
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->this$0:Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mThemeAttrs:[I

    .line 93
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAutoMirrored:Z

    .line 94
    const/4 p1, -0x2

    iput p1, p0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mRepeatCount:I

    .line 81
    iput-wide p2, p0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mNativePtr:J

    .line 82
    iput-object p4, p0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mInputStream:Ljava/io/InputStream;

    .line 83
    iput-object p5, p0, Landroid/graphics/drawable/AnimatedImageDrawable$State;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 84
    return-void
.end method
