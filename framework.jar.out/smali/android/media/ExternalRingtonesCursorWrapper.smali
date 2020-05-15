.class public Landroid/media/ExternalRingtonesCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "ExternalRingtonesCursorWrapper.java"


# instance fields
.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;I)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "userId"    # I

    .line 35
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 36
    iput p2, p0, Landroid/media/ExternalRingtonesCursorWrapper;->mUserId:I

    .line 37
    return-void
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .line 40
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 42
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget v2, p0, Landroid/media/ExternalRingtonesCursorWrapper;->mUserId:I

    invoke-static {v1, v2}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    :cond_0
    return-object v0
.end method
