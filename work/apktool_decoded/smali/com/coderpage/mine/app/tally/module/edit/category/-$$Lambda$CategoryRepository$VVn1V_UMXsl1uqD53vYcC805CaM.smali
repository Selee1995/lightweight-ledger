.class public final synthetic Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$VVn1V_UMXsl1uqD53vYcC805CaM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/coderpage/base/common/SimpleCallback;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$VVn1V_UMXsl1uqD53vYcC805CaM;->f$0:J

    iput-object p3, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$VVn1V_UMXsl1uqD53vYcC805CaM;->f$1:Ljava/lang/String;

    iput-object p4, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$VVn1V_UMXsl1uqD53vYcC805CaM;->f$2:Ljava/lang/String;

    iput-object p5, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$VVn1V_UMXsl1uqD53vYcC805CaM;->f$3:Lcom/coderpage/base/common/SimpleCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$VVn1V_UMXsl1uqD53vYcC805CaM;->f$0:J

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$VVn1V_UMXsl1uqD53vYcC805CaM;->f$1:Ljava/lang/String;

    iget-object v3, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$VVn1V_UMXsl1uqD53vYcC805CaM;->f$2:Ljava/lang/String;

    iget-object v4, p0, Lcom/coderpage/mine/app/tally/module/edit/category/-$$Lambda$CategoryRepository$VVn1V_UMXsl1uqD53vYcC805CaM;->f$3:Lcom/coderpage/base/common/SimpleCallback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/coderpage/mine/app/tally/module/edit/category/CategoryRepository;->lambda$updateCategory$3(JLjava/lang/String;Ljava/lang/String;Lcom/coderpage/base/common/SimpleCallback;)V

    return-void
.end method
