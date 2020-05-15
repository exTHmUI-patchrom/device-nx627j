.class final Landroid/widget/RemoteViews$ViewContentNavigation;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewContentNavigation"
.end annotation


# instance fields
.field final mNext:Z

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;IZ)V
    .locals 0
    .param p2, "viewId"    # I
    .param p3, "next"    # Z

    .line 1153
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1154
    iput p2, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->viewId:I

    .line 1155
    iput-boolean p3, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->mNext:Z

    .line 1156
    return-void
.end method

.method constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 0
    .param p2, "in"    # Landroid/os/Parcel;

    .line 1158
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->viewId:I

    .line 1160
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->mNext:Z

    .line 1161
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .line 1170
    iget v0, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1171
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    return-void

    .line 1174
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->this$0:Landroid/widget/RemoteViews;

    .line 1175
    iget-boolean v2, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->mNext:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "showNext"

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "showPrevious"

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1174
    invoke-static {v1, v0, v2, v3, v4}, Landroid/widget/RemoteViews;->access$400(Landroid/widget/RemoteViews;Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    .line 1175
    #disallowed odex opcode
    #invoke-super-quick {v1, v0}, vtable@63760
    nop

    xor-long p32, v0, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1178
    .line 1179
    return-void

    .line 1176
    :catch_0
    move-exception v1

    .line 1177
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v2, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getActionTag()I
    .locals 1

    .line 1187
    const/4 v0, 0x5

    return v0
.end method

.method public mergeBehavior()I
    .locals 1

    .line 1182
    const/4 v0, 0x2

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1164
    iget v0, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1165
    iget-boolean v0, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->mNext:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1166
    return-void
.end method
