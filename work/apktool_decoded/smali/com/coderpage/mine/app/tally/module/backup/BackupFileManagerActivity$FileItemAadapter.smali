.class Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemAadapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BackupFileManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileItemAadapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;


# direct methods
.method private constructor <init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemAadapter;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 86
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemAadapter;->mDataList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$1;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemAadapter;-><init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;)V

    return-void
.end method

.method static synthetic access$200(Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemAadapter;Ljava/util/List;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemAadapter;->setDataList(Ljava/util/List;)V

    return-void
.end method

.method private setDataList(Ljava/util/List;)V
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

    if-nez p1, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemAadapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemAadapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemAadapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemAadapter;->mDataList:Ljava/util/List;

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

    .line 84
    check-cast p1, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemAadapter;->onBindViewHolder(Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemViewHolder;I)V
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

    .line 111
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemAadapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;

    invoke-virtual {p1, p2}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemViewHolder;->bind(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)V

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

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemAadapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemViewHolder;
    .locals 4
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

    .line 105
    new-instance p2, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemViewHolder;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemAadapter;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b005c

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;

    invoke-direct {p2, v0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity$FileItemViewHolder;-><init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileManagerActivity;Lcom/coderpage/mine/module/backup/ItemBackupFileManagerBinding;)V

    return-object p2
.end method
