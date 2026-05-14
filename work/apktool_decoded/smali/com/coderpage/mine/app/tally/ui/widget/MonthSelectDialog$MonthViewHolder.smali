.class Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MonthSelectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonthViewHolder"
.end annotation


# instance fields
.field private mMonth:Lcom/coderpage/mine/app/tally/module/chart/data/Month;

.field private mMonthSelectedListener:Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$OnMonthSelectedListener;

.field private mMonthTv:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;

.field final synthetic this$0:Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;


# direct methods
.method private constructor <init>(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;Landroid/view/View;Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$OnMonthSelectedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "view",
            "listener"
        }
    .end annotation

    .line 278
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;->this$0:Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;

    .line 279
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 280
    iput-object p3, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;->mMonthSelectedListener:Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$OnMonthSelectedListener;

    .line 281
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;->mRootView:Landroid/view/View;

    .line 282
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09014c

    .line 283
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;->mMonthTv:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;Landroid/view/View;Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$OnMonthSelectedListener;Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$1;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1, p2, p3}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;-><init>(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;Landroid/view/View;Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$OnMonthSelectedListener;)V

    return-void
.end method

.method static synthetic access$800(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;Lcom/coderpage/mine/app/tally/module/chart/data/Month;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;->setData(Lcom/coderpage/mine/app/tally/module/chart/data/Month;)V

    return-void
.end method

.method static synthetic access$900(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;)Landroid/view/View;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method private setData(Lcom/coderpage/mine/app/tally/module/chart/data/Month;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "month"
        }
    .end annotation

    .line 295
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;->mMonth:Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    .line 296
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;->mMonthTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;->mMonth:Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    invoke-virtual {v2}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->getYear()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/coderpage/mine/app/tally/module/chart/data/Month;->getMonth()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;->mMonth:Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;->this$0:Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;->access$1000(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog;)Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coderpage/base/utils/CommonUtils;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 299
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 288
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 291
    :cond_0
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;->mMonthSelectedListener:Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$OnMonthSelectedListener;

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;->mMonth:Lcom/coderpage/mine/app/tally/module/chart/data/Month;

    invoke-interface {p1, p0, v0}, Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$OnMonthSelectedListener;->onMonthSelected(Lcom/coderpage/mine/app/tally/ui/widget/MonthSelectDialog$MonthViewHolder;Lcom/coderpage/mine/app/tally/module/chart/data/Month;)V

    return-void
.end method
