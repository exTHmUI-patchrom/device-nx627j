.class Landroid/content/pm/BaseParceledListSlice$1;
.super Landroid/os/Binder;
.source "BaseParceledListSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/BaseParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/pm/BaseParceledListSlice;

.field final synthetic val$N:I

.field final synthetic val$callFlags:I

.field final synthetic val$listElementClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Landroid/content/pm/BaseParceledListSlice;ILjava/lang/Class;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/pm/BaseParceledListSlice;

    .line 174
    .local p0, "this":Landroid/content/pm/BaseParceledListSlice$1;, "Landroid/content/pm/BaseParceledListSlice$1;"
    iput-object p1, p0, Landroid/content/pm/BaseParceledListSlice$1;->this$0:Landroid/content/pm/BaseParceledListSlice;

    iput p2, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$N:I

    iput-object p3, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$listElementClass:Ljava/lang/Class;

    iput p4, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$callFlags:I

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    .local p0, "this":Landroid/content/pm/BaseParceledListSlice$1;, "Landroid/content/pm/BaseParceledListSlice$1;"
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 181
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 182
    .local v1, "i":I
    invoke-static {}, Landroid/content/pm/BaseParceledListSlice;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/content/pm/BaseParceledListSlice;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing more @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$N:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_1
    :goto_0
    iget v2, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$N:I

    if-ge v1, v2, :cond_3

    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_3

    .line 184
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v2, p0, Landroid/content/pm/BaseParceledListSlice$1;->this$0:Landroid/content/pm/BaseParceledListSlice;

    invoke-static {v2}, Landroid/content/pm/BaseParceledListSlice;->access$200(Landroid/content/pm/BaseParceledListSlice;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 187
    .local v2, "parcelable":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$listElementClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/content/pm/BaseParceledListSlice;->access$300(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 188
    iget-object v3, p0, Landroid/content/pm/BaseParceledListSlice$1;->this$0:Landroid/content/pm/BaseParceledListSlice;

    iget v4, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$callFlags:I

    invoke-virtual {v3, v2, p3, v4}, Landroid/content/pm/BaseParceledListSlice;->writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 190
    invoke-static {}, Landroid/content/pm/BaseParceledListSlice;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/content/pm/BaseParceledListSlice;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrote extra #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/content/pm/BaseParceledListSlice$1;->this$0:Landroid/content/pm/BaseParceledListSlice;

    invoke-static {v5}, Landroid/content/pm/BaseParceledListSlice;->access$200(Landroid/content/pm/BaseParceledListSlice;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 192
    .end local v2    # "parcelable":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 193
    :cond_3
    iget v2, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$N:I

    if-ge v1, v2, :cond_5

    .line 194
    invoke-static {}, Landroid/content/pm/BaseParceledListSlice;->access$000()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Landroid/content/pm/BaseParceledListSlice;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Breaking @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/content/pm/BaseParceledListSlice$1;->val$N:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    :cond_5
    return v0
.end method
