.class Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BackupFileSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileAdapter;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 101
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileAdapter;->mDataList:Ljava/util/List;

    .line 105
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 99
    check-cast p1, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileAdapter;->onBindViewHolder(Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;

    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileViewHolder;->bindData(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 122
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0053

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBinding;

    .line 124
    new-instance p2, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileViewHolder;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileAdapter;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;

    invoke-direct {p2, v0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileViewHolder;-><init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;Lcom/coderpage/mine/module/backup/ItemBackupFileSelectBinding;)V

    return-object p2
.end method

.method setDataList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;",
            ">;)V"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileAdapter;->notifyDataSetChanged()V

    return-void
.end method
