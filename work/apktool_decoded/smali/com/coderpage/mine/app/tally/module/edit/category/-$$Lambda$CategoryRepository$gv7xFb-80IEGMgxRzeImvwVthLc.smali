.class public final synthetic Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$gv7xFb-80IEGMgxRzeImvwVthLc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/utils/ArrayUtils$Comparator;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$gv7xFb-80IEGMgxRzeImvwVthLc;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$gv7xFb-80IEGMgxRzeImvwVthLc;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    invoke-static {v0, p1}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;->lambda$addCategory$6(Ljava/lang/String;Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)Z

    move-result p1

    return p1
.end method
