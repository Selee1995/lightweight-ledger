.class Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PopupUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/utils/PopupUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PopupListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter$VH;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private titleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "titleList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter;->titleList:Ljava/util/List;

    .line 92
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/coderpage/mine/app/tally/utils/PopupUtils$1;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter;->titleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter;->titleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 114
    iget-object p2, p0, Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b0032

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090171

    .line 115
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 116
    new-instance v0, Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter$VH;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p3, v1}, Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter$VH;-><init>(Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter;Landroid/widget/TextView;Lcom/coderpage/mine/app/tally/utils/PopupUtils$1;)V

    .line 117
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter$VH;

    .line 122
    :goto_0
    invoke-static {v0}, Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter$VH;->access$200(Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter$VH;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/utils/PopupUtils$PopupListAdapter;->titleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
