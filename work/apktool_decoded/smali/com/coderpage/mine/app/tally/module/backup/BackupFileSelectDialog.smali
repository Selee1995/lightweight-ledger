.class public Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;
.super Landroid/app/Dialog;
.source "BackupFileSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$Listener;,
        Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$ItemViewModel;,
        Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileViewHolder;,
        Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileAdapter;
    }
.end annotation


# instance fields
.field private mListener:Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$Listener;

.field private mViewModel:Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$ItemViewModel;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "fileList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/persistence/document/DocumentFile;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0f0192

    .line 42
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 43
    new-instance v0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$ItemViewModel;

    invoke-direct {v0, p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$ItemViewModel;-><init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;->mViewModel:Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$ItemViewModel;

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;->initView(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;)Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$ItemViewModel;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;->mViewModel:Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$ItemViewModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;)Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$Listener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;->mListener:Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$Listener;

    return-object p0
.end method

.method private initWindow(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x50

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 92
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 94
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 95
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v2, v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 96
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static synthetic lambda$initView$2(Ljava/util/List;IILcom/coderpage/mine/persistence/document/DocumentFile;)V
    .locals 0

    .line 60
    new-instance p1, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;

    invoke-direct {p1, p3}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;-><init>(Lcom/coderpage/mine/persistence/document/DocumentFile;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$initView$3(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)I
    .locals 5

    .line 62
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->getCreateTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x0

    return p0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;->getCreateTime()J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-lez v2, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method


# virtual methods
.method public initView(Landroid/app/Activity;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "fileList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/persistence/document/DocumentFile;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0052

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09012e

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileSelectDialog$rJu4NcdRcRll2YaRmIIirjuYDIg;

    invoke-direct {v3, p0}, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileSelectDialog$rJu4NcdRcRll2YaRmIIirjuYDIg;-><init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09012f

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileSelectDialog$OEe9lFIgMkWx6y7eoQVYZS0jg5M;

    invoke-direct {v3, p0}, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileSelectDialog$OEe9lFIgMkWx6y7eoQVYZS0jg5M;-><init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    new-instance v3, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileSelectDialog$qbCaeB7noNdnCY1yZIDp0gKXfw0;

    invoke-direct {v3, v1}, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileSelectDialog$qbCaeB7noNdnCY1yZIDp0gKXfw0;-><init>(Ljava/util/List;)V

    invoke-static {p2, v3}, Lcom/coderpage/base/utils/ArrayUtils;->forEach(Ljava/util/List;Lcom/coderpage/base/utils/ArrayUtils$Consumer;)V

    .line 61
    sget-object v3, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileSelectDialog$GB3Q6AEpj9PD6Ae9-iHFmpyZgUo;->INSTANCE:Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileSelectDialog$GB3Q6AEpj9PD6Ae9-iHFmpyZgUo;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const v3, 0x7f0900cb

    .line 68
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    .line 69
    new-instance v4, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileAdapter;

    invoke-direct {v4, p0, p1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileAdapter;-><init>(Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;Landroid/content/Context;)V

    .line 70
    invoke-virtual {v4, v1}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$FileAdapter;->setDataList(Ljava/util/List;)V

    .line 71
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v1, p1, v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 72
    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;->setContentView(Landroid/view/View;)V

    .line 77
    invoke-virtual {v0, v6, v6}, Landroid/view/View;->measure(II)V

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0b0053

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 81
    invoke-virtual {p1, v6, v6}, Landroid/view/View;->measure(II)V

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    mul-int p1, p1, p2

    add-int/2addr v0, p1

    .line 83
    invoke-direct {p0, v0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;->initWindow(I)V

    return-void
.end method

.method public synthetic lambda$initView$0$BackupFileSelectDialog(Landroid/view/View;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;->mListener:Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$Listener;

    invoke-interface {p1, p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$Listener;->onCancelClick(Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;)V

    return-void
.end method

.method public synthetic lambda$initView$1$BackupFileSelectDialog(Landroid/view/View;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;->mListener:Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$Listener;

    invoke-interface {p1, p0}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$Listener;->onSelectFromLocalClick(Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;)V

    return-void
.end method

.method public setListener(Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$Listener;)Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;->mListener:Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog$Listener;

    return-object p0
.end method
