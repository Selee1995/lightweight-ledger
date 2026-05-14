.class public final synthetic Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$cneZGuLDyJ416lK0-xoPShDWCcA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/base/utils/ArrayUtils$Consumer;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$cneZGuLDyJ416lK0-xoPShDWCcA;->f$0:Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;

    return-void
.end method


# virtual methods
.method public final accept(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$cneZGuLDyJ416lK0-xoPShDWCcA;->f$0:Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;

    check-cast p3, Lcom/coderpage/mine/app/tally/persistence/model/CategoryModel;

    invoke-static {v0, p1, p2, p3}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;->lambda$updateCategoryOrder$4(Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;IILcom/coderpage/mine/app/tally/persistence/model/CategoryModel;)V

    return-void
.end method
