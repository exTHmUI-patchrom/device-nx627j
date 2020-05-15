.class Lcom/android/server/NubiaMLockManager$LockedFile;
.super Ljava/lang/Object;
.source "NubiaMLockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NubiaMLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockedFile"
.end annotation


# instance fields
.field mAddress:J

.field mFilename:Ljava/lang/String;

.field mLength:J


# direct methods
.method constructor <init>(JJLjava/lang/String;)V
    .locals 0
    .param p1, "address"    # J
    .param p3, "length"    # J
    .param p5, "filename"    # Ljava/lang/String;

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    iput-wide p1, p0, Lcom/android/server/NubiaMLockManager$LockedFile;->mAddress:J

    .line 592
    iput-wide p3, p0, Lcom/android/server/NubiaMLockManager$LockedFile;->mLength:J

    .line 593
    iput-object p5, p0, Lcom/android/server/NubiaMLockManager$LockedFile;->mFilename:Ljava/lang/String;

    .line 594
    return-void
.end method
