function answer_score(results){
  let sum = Number(0) ;
  results.forEach(function(score, i) {
    if (score.checked) {
      sum += Number(score.value);
    }
  })
  return sum - 1;
};

function post (){
    const answer1 = answer_score(document.getElementsByName("hdsr_log_patient[answer_1]"));
    const answer2_1 =answer_score( document.getElementsByName("hdsr_log_patient[answer_2_1]"));
    const answer2_2 =answer_score( document.getElementsByName("hdsr_log_patient[answer_2_2]"));
    const answer2_3 =answer_score( document.getElementsByName("hdsr_log_patient[answer_2_3]"));
    const answer2_4 =answer_score( document.getElementsByName("hdsr_log_patient[answer_2_4]"));
    const answer3 = answer_score(document.getElementsByName("hdsr_log_patient[answer_3]"));
    const answer4_1 =answer_score( document.getElementsByName("hdsr_log_patient[answer_4_1]"));
    const answer4_2 =answer_score( document.getElementsByName("hdsr_log_patient[answer_4_2]"));
    const answer4_3 =answer_score( document.getElementsByName("hdsr_log_patient[answer_4_3]"));
    const answer5_1 =answer_score( document.getElementsByName("hdsr_log_patient[answer_5_1]"));
    const answer5_2 =answer_score( document.getElementsByName("hdsr_log_patient[answer_5_2]"));
    const answer6_1 =answer_score( document.getElementsByName("hdsr_log_patient[answer_6_1]"));
    const answer6_2 =answer_score( document.getElementsByName("hdsr_log_patient[answer_6_2]"));
    const answer7_1 =answer_score( document.getElementsByName("hdsr_log_patient[answer_7_1]"));
    const answer7_2 =answer_score( document.getElementsByName("hdsr_log_patient[answer_7_2]"));
    const answer7_3 =answer_score( document.getElementsByName("hdsr_log_patient[answer_7_3]"));
    const answer8 =answer_score( document.getElementsByName("hdsr_log_patient[answer_8]"));
    const answer9 =answer_score( document.getElementsByName("hdsr_log_patient[answer_9]"));

    
    const results =[answer1, answer2_1, answer2_2, answer2_3, answer2_4, answer3, answer4_1, answer4_2, answer4_3,
                      answer5_1, answer5_2, answer6_1, answer6_2, answer7_1, answer7_2, answer7_3, answer8, answer9]
    let total = results.reduce(function(sum, element){
      return sum + element;
    }, 0);

    total_score.innerHTML = `${total}点`;
    const renderDom = this.document.getElementById("total_score");
    const totalScoreObj = `<input value=${total} name='total_score' type='hidden'>`;
    renderDom.insertAdjacentHTML("beforeend", totalScoreObj);

    const renderMessageBox = document.getElementById('message-box');
    if (total < 20){
      message.innerHTML = "認知症の疑いがあります。早めに病院を受診しましょう。";
      renderMessageBox.style.backgroundColor='#EE0000';
    }else if(total >= 20){
      message.innerHTML = "正常範囲ですが、心配な方は早めに病院に相談しましょう。";
      renderMessageBox.style.backgroundColor='lightgreen';
    };
};
window.addEventListener('click', post);